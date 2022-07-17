import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stalkr/application/app_stream.dart';
import 'package:stalkr/core/di/service_locator.dart';
import 'package:stalkr/infra/service/i_user_service.dart';
import 'package:stalkr/ui/reusables/stalkr_alert_dialog.dart';
import 'package:stalkr/ui/reusables/stalkr_app_bar.dart';

import '../domain/account.dart';

class DetailsScreen extends StatefulWidget {
  final dynamic account;

  const DetailsScreen({super.key, required this.account});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final IUserService _userService = locator<IUserService>();
  TextEditingController _nameCtrl = TextEditingController();
  TextEditingController _statusCtrl = TextEditingController();
  TextEditingController _numberCtrl = TextEditingController();

  Future<void> _submitEdit(Account account) async {
    var input = account.toJson();

    input['name'] = _nameCtrl.text;
    input['status'] = _statusCtrl.text;
    input['number'] = int.parse(_numberCtrl.text);

    _userService.updateAccount(Account.fromJson(input));

    Navigator.pop(context);
  }

  Future<void> _deleteAccount(Account account) async {
    StalkrAlertDialog.showAlertDialog(context, "Sure to delete?", account);
  }

  void _showDialog(Account account) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: StalkrAppBar.appBar("Edit Account"),
      body: _buildContent2(widget.account),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => await _submitEdit(widget.account),
        child: const Icon(Icons.check),
        backgroundColor: Colors.black,
      ),
    );
  }

  // Widget _buildContent(Account account) {
  //   _nameCtrl.text = account.name;
  //   _statusCtrl.text = account.status!;
  //   _numberCtrl.text = account.number.toString();
  //   return Scaffold(
  //     body: Container(
  //       margin: EdgeInsets.symmetric(vertical: 24, horizontal: 24),
  //       color: Colors.white,
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.start,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: [
  //           Container(
  //             width: 100,
  //             height: 100,
  //             child: CircleAvatar(
  //               child: account.imageUrl != null
  //                   ? SvgPicture.network(account.imageUrl!)
  //                   // ? Image(_imageLocalPath!)
  //                   : Container(),
  //             ),
  //           ),
  //           TextFormField(
  //             controller: _nameCtrl,
  //             decoration: const InputDecoration(labelText: "Name"),
  //           ),
  //           TextFormField(
  //             controller: _statusCtrl,
  //           ),
  //           TextFormField(
  //             controller: _numberCtrl,
  //           ),
  //           /*   TextFormField(
  //             enabled: false,
  //             initialValue: account.birthDate,
  //           ) */
  //           ElevatedButton(
  //               onPressed: () async {
  //                 await _deleteAccount(account);
  //               },
  //               child: const Icon(Icons.delete))
  //         ],
  //       ),
  //     ),
  //     floatingActionButton: FloatingActionButton(
  //       onPressed: () async => await _submitEdit(account),
  //       child: const Icon(Icons.save),
  //     ),
  //   );
  // }

  Widget _buildContent2(Account account) {
    _nameCtrl.text = account.name;
    _statusCtrl.text = account.status!;
    _numberCtrl.text = account.number.toString();
    return Center(
      child: Container(
        width: 300,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[190],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: 100,
                height: 100,
                child: CircleAvatar(
                  child: account.imageUrl != null
                      ? SvgPicture.network(account.imageUrl!)
                      // ? Image(_imageLocalPath!)
                      : Container(),
                ),
              ),
            ),
            TextFormField(
              controller: _nameCtrl,
              decoration: InputDecoration(hintText: "Name"),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Can\'t be empty';
                }
              },
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: _statusCtrl,
              decoration: InputDecoration(hintText: "Status"),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return 'Can\'t be empty';
                }
              },
              textAlign: TextAlign.center,
            ),
            TextFormField(
              controller: _numberCtrl,
              maxLength: 12,
              decoration: InputDecoration(hintText: "Phone Number"),
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
              textAlign: TextAlign.center,
            ),
            GestureDetector(
                child: const Text("Delete",
                    style: TextStyle(color: Colors.red, fontSize: 20)),
                onTap: () async {
                  await _deleteAccount(account);
                })
          ],
        ),
      ),
    );
  }
}
