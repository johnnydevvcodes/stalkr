import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../storage/user_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.userDetails});

  final UserDetails userDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Container(
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
                child: userDetails.imageUrl != null
                    ? SvgPicture.file(
                        File.fromUri(Uri.parse(userDetails.imageUrl)))
                    // ? Image(_imageLocalPath!)
                    : Container(),
              ),
            ),
            TextFormField(
              enabled: false,
              decoration: InputDecoration(labelText:"Name"),
              initialValue: userDetails.name,
            ),
            TextFormField(
              enabled: false,
              initialValue: userDetails.status,
            ),
            TextFormField(
              enabled: false,
              initialValue: userDetails.number.toString(),
            ),
            TextFormField(
              enabled: false,
              initialValue: userDetails.birthDate,
            )
          ],
        ),
      ),
    );
  }
}
