// ignore_for_file: prefer_const_constructors

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stalkr/screens/details_screen.dart';

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
  final _phoneNumberCtrl = TextEditingController(text: '63');
  final _birthDateCtrl = TextEditingController();
  late DateTime _birthdatePicker = DateTime.now();
  var _appStream = AppStream();
  String? _imageLocalPath;
  String? get _statusOutput => _nameCtrl.text.isNotEmpty
      ? "${_nameCtrl.text}, ${_statusCtrl.text}"
      : null;
  @override
  void dispose() {
    _appStream.dispose();
    super.dispose();
  }

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
    // Obtain shared preferences.

    //_initDownload();

    _birthDateCtrl.text =
        "${_birthdatePicker.month}/${_birthdatePicker.day}/${_birthdatePicker.year}";

    _initValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stalkr"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /* Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                child: CircleAvatar(
                  child: _imageLocalPath != null
                      ? SvgPicture.file(
                          File.fromUri(Uri.parse(_imageLocalPath!)))
                      // ? Image(_imageLocalPath!)
                      : Container(),
                ),
              ),
            ), */
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
                    setState(() {
                      _birthDateCtrl.text =
                          "${newDate.month}/${newDate.day}/${newDate.year}";
                    });
                  }
                }),
            /*  Expanded(
              flex: 5,
              child: Center(
                child: Text(_statusOutput == null || _statusOutput!.isEmpty
                    ? widget.emptyMessage
                    : _statusOutput!),
              ),
            ), */
            ValueListenableBuilder<Account>(
              valueListenable: ValueNotifier(Account()),
              builder: (BuildContext context, Account value, Widget? child) {
                return Container();
              },
            ),
            FutureBuilder<Account>(
              initialData: Account(),
              future: _appStream.getAccountFuture(),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                switch(snapshot.connectionState){

                  case ConnectionState.none:
                    // TODO: Handle this case.
                    break;
                  case ConnectionState.waiting:
                    // TODO: Handle this case.
                    break;
                  case ConnectionState.active:
                    // TODO: Handle this case.
                    break;
                  case ConnectionState.done:
                    // TODO: Handle this case.
                    break;
                }
                return Container();
              },
            ),
            Expanded(
              child: StreamBuilder<Account>(
                  initialData: Account(),
                  stream: _appStream.valOutput,
                  builder: (context, snapshot) {
                    if (snapshot.data == null &&
                        snapshot.connectionState != ConnectionState.done) {
                      return Center(child: Text("Add Account Now"));
                    } else {
                      var account = snapshot.data ?? Account();
                      return Center(child: Text(account.toJson().toString()));
                    }
                  }),
            ),
            Expanded(
              child: StreamBuilder<Account>(
                  initialData: Account(),
                  stream: _appStream.valOutput,
                  builder: (context, snapshot) {
                    if (snapshot.data == null &&
                        snapshot.connectionState != ConnectionState.done) {
                      return Center(child: Text("Add Account Now"));
                    } else {
                      var account = snapshot.data ?? Account();
                      return Center(child: Text(account.toJson().toString()));
                    }
                  }),
            ),
          ],
        ),
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

      await downloadAvatar(url);

      UserDetails userDetails = UserDetails(
          _imageLocalPath!,
          _nameCtrl.text,
          _statusCtrl.text,
          int.parse(_phoneNumberCtrl.text),
          _birthDateCtrl.text);

      // await prefInstance.setString('_name', _nameCtrl.text);
      // await prefInstance.setString('_status', _statusCtrl.text);
      // await prefInstance.setString('_imageLocalPath', _imageLocalPath ?? '');
      // await prefInstance.setString('_phoneNumber', _phoneNumberCtrl.text);
      // await prefInstance.setString('_birthDate', _birthDateCtrl.text);

      _appStream.valInput.add(Account(
        name: _nameCtrl.text,
        imageUrl: _imageLocalPath ?? '',
        status: _imageLocalPath ?? '',
        number: int.parse(_phoneNumberCtrl.text),
        birthDate: _birthDateCtrl.text,
      ));

      Navigator.push(
        context,
        MaterialPageRoute(
            // haBs an error if you put on const
            builder: (context) => DetailsScreen(userDetails: userDetails)),
      );
    }
    setState(() {});
  }

  Future<void> _initDownload() async {
    var dio = Dio();
    final appDocumentDir = await getApplicationDocumentsDirectory();
    // make sure it exists
    await appDocumentDir.create(recursive: true);
    String appDocPath = appDocumentDir.path;
    String localPath = "$appDocPath/leni-pink.svg";
    String url = "https://avatars.dicebear.com/api/adventurer/leni-pink.svg";
    await dio.download(url, localPath).then((value) {
      print(value);
      _imageLocalPath = localPath;
      // log(value)
    });
  }

  Future<void> downloadAvatar(url) async {
    var dio = Dio();
    final appDocumentDir = await getApplicationDocumentsDirectory();
    // make sure it exists
    await appDocumentDir.create(recursive: true);
    String appDocPath = appDocumentDir.path;
    String localPath = "$appDocPath/leni-pink.svg";
    return await dio.download(url, localPath).then((value) {
      print(value);
      _imageLocalPath = localPath;
      // log(value)
      return;
    });
  }

  void _initValues() {
    _nameCtrl.text = prefInstance.getString('_name') ?? '';

    _statusCtrl.text = prefInstance.getString('_status') ?? '';

    _imageLocalPath = prefInstance.getString('_imageLocalPath') ?? '';

    _phoneNumberCtrl.text = prefInstance.getString('_phoneNumber') ?? '63';

    _birthDateCtrl.text =
        prefInstance.getString('_birthDate') ?? DateTime.now().toString();

    setState(() {});
  }
}
