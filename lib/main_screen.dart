// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:path_provider/path_provider.dart';

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
  final _nameCtrl = TextEditingController();
  final _statusCtrl = TextEditingController();

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
    _initDownload();
    print('initState');
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
            Expanded(
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
            ),
            TextField(
              controller: _nameCtrl,
              decoration: InputDecoration(hintText: "Name"),
            ),
            TextField(
              controller: _statusCtrl,
              decoration: InputDecoration(hintText: "Status"),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Text(_statusOutput == null || _statusOutput!.isEmpty
                    ? widget.emptyMessage
                    : _statusOutput!),
              ),
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

  void _save() {
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
}
