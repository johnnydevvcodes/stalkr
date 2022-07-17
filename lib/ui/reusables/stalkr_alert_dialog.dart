import 'package:flutter/material.dart';
import 'package:stalkr/core/di/service_locator.dart';
import 'package:stalkr/domain/account.dart';
import 'package:stalkr/infra/service/i_user_service.dart';
import 'package:stalkr/ui/reusables/router.dart';

class StalkrAlertDialog {
  static showAlertDialog(
      BuildContext context, String alertTitle, Account account) {
    final IUserService _userService = locator<IUserService>();

    // set up the buttons
    Widget actionButton;
    if (alertTitle == "Sure to delete?") {
      actionButton = ElevatedButton(
          child: const Text("Delete"),
          onPressed: () {
            _userService.deleteAccount(account);
            context.popToRoot();
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.red,
              minimumSize: const Size(200, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))));
    } else if (alertTitle == "Sure to add?") {
      actionButton = ElevatedButton(
          child: const Text("Add"),
          onPressed: () {
            _userService.saveAccount(account);
           // _userService.saveAccountSembast(account);
            context.popToRoot();
          },
          style: ElevatedButton.styleFrom(
              primary: Colors.black,
              minimumSize: const Size(200, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))));
    } else {
      actionButton = ElevatedButton(
        child: const Text("Continue"),
        onPressed: () {
          context.popToRoot();
        },
      );
    }

    Widget cancelButton = GestureDetector(
      child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
      onTap: () {
        context.pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Center(
        child: Text(alertTitle, style: const TextStyle(fontSize: 24)),
      ),
      content: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(account.name),
                  Text(account.number.toString()),
                  Text(account.status!),
                ],
              ),
            ),
            actionButton,
            cancelButton
          ]),
        ),
      ),
      /*  actions: [
        cancelButton,
        actionButton,
      ], */
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
