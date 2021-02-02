import 'package:flutter/material.dart';

import 'pages/home.dart';

void main(List<String> args) {
  runApp(FlutterLearnersApp());
}

class FlutterLearnersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
