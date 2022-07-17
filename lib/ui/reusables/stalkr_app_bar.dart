import 'package:flutter/material.dart';

class StalkrAppBar {

  static PreferredSizeWidget appBar(String title) {
    return PreferredSize(
      
      preferredSize: const Size.fromHeight(120),
      child: AppBar(
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(title,
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        backgroundColor: Colors.white,
        toolbarHeight: 100,
      ),
    );
  }
  
}
