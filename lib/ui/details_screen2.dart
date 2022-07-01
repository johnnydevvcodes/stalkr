import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:stalkr/application/app_stream.dart';

import '../domain/account.dart';

class DetailsScreen2 extends StatefulWidget {
  const DetailsScreen2({super.key});

  @override
  State<DetailsScreen2> createState() => _DetailsScreen2State();
}

class _DetailsScreen2State extends State<DetailsScreen2> {
  var _appStream = AppStream();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: ValueListenableBuilder(
        valueListenable: _appStream.accountNotifier,
        builder: (context, Account? value, child) {
          var account = value ?? Account();
          return _buildContent(account);
        },
      ),
    );
  }

  Widget _buildContent(Account account) {
    return Container(
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
            enabled: false,
            decoration: InputDecoration(labelText: "Name"),
            initialValue: account.name,
          ),
          TextFormField(
            enabled: false,
            initialValue: account.status,
          ),
          TextFormField(
            enabled: false,
            initialValue: account.number.toString(),
          ),
          // TextFormField(
          //   enabled: false,
          //   initialValue: account.birthDate,
          // )
        ],
      ),
    );
  }
}
