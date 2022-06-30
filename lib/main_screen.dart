// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stalkr/router.dart';
import 'package:stalkr/screens/details_screen.dart';
import 'package:stalkr/screens/details_screen2.dart';
// import 'package:stalkr/storage/prefs.dart';
// import 'storage/user_details.dart';
import 'package:stalkr/storage/xport_storage.dart';

import 'application/app_stream.dart';
import 'models/account.dart';

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  final String emptyMessage;

  // ignore: prefer_const_constructors_in_immutables
  MainScreen({
    Key? key,
    required this.emptyMessage,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with WidgetsBindingObserver {
  var prefInstance = Prefs.instance;
  final _nameCtrl = TextEditingController();
  final _statusCtrl = TextEditingController();
  final _phoneNumberCtrl = TextEditingController();
  final _birthDateCtrl = TextEditingController();
  late DateTime _birthdatePicker = DateTime.now();
  var _appStream = AppStream();
  String? _imageLocalPath;
  String? get _statusOutput => _nameCtrl.text.isNotEmpty
      ? "${_nameCtrl.text}, ${_statusCtrl.text}"
      : null;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print("state lifecycle $state");
    switch (state) {
      case AppLifecycleState.resumed:
        //online
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        //off line
        break;
    }
  }

  @override
  void initState() {
    super.initState();

    // _birthDateCtrl.text =
    //     "${_birthdatePicker.month}/${_birthdatePicker.day}/${_birthdatePicker.year}";

    // _appStream.valOutput.listen((event) {
    //   _nameCtrl.text = event.name;
    //   _statusCtrl.text = event.status ?? '';
    //   _phoneNumberCtrl.text =
    //       event.number.toString() == "null" ? "63" : event.number.toString();
    //   _birthDateCtrl.text = event.birthDate ??
    //       "${_birthdatePicker.month}/${_birthdatePicker.day}/${_birthdatePicker.year}";
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stalkr"),
      ),
      body: StreamBuilder(
        stream: _appStream.valOutput,
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.data == null &&
              snapshot.connectionState != ConnectionState.done) {
            return Center(child: CircularProgressIndicator());
          } else {
            Account account = snapshot.data ?? Account();
            _nameCtrl.text = account.name;
            _statusCtrl.text = account.status ?? 'No stats';
            _phoneNumberCtrl.text = account.number.toString();
            _birthDateCtrl.text = account.birthDate!;
            return SingleChildScrollView(child: _buildContent(account));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _save();
        },
        child: Icon(Icons.save),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Please fill up all fields"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  Future<void> _save() async {
    if (_statusCtrl.text.isEmpty ||
        _nameCtrl.text.isEmpty ||
        _phoneNumberCtrl.text.length < 12) {
      showDialog(context: context, builder: showAlertDialog(context));
    } else {
      String url =
          "https://avatars.dicebear.com/api/adventurer/${_nameCtrl.text}.svg";

      await _appStream.saveAccount(Account(
        name: _nameCtrl.text,
        imageUrl: url,
        status: _statusCtrl.text,
        number: int.parse(_phoneNumberCtrl.text),
        birthDate: _birthDateCtrl.text,
      ));

      // context.toScreen(DetailsScreen());
      context.toScreen(DetailsScreen2());
    }
  }

  Widget _buildContent(Account account) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            child: CircleAvatar(
              child: account.imageUrl != null
                  ? SvgPicture.network(account.imageUrl!)
                  // ? Image(_imageLocalPath!)
                  : Container(),
            ),
          ),
          TextFormField(
            controller: _nameCtrl,
            decoration: InputDecoration(labelText: "Name"),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Can\'t be empty';
              }
            },
          ),
          TextFormField(
            controller: _statusCtrl,
            decoration: InputDecoration(labelText: "Status"),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Can\'t be empty';
              }
            },
          ),
          TextFormField(
            controller: _phoneNumberCtrl,
            maxLength: 12,
            decoration: InputDecoration(labelText: "Phone Number"),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validator: (text) {
              if (text == null || text.isEmpty) {
                return 'Can\'t be empty';
              }
              if (!text.startsWith('63')) {
                return 'Must start with 63';
              }
              if (text.length < 12) {
                return 'Must be 12 digits long';
              }
            },
          ),
          TextFormField(
              textInputAction: TextInputAction.done,
              controller: _birthDateCtrl,
              decoration: InputDecoration(labelText: "Birthdate"),
              onFieldSubmitted: (String fieldValue) {
                _save();
              },
              onTap: () async {
                DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: _birthdatePicker,
                    firstDate: DateTime(1990),
                    lastDate: DateTime.now());
                if (newDate == null)
                  return;
                else {
                  _birthDateCtrl.text =
                      "${newDate.month}/${newDate.day}/${newDate.year}";
                }
              }),
        ],
      ),
    );
  }
}
