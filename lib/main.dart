import 'package:flutter/material.dart';
import 'package:flutter_learners_app/widgets/theme_provider.dart';

import 'pages/home.dart';

void main(List<String> args) {
  runApp(FlutterLearnersApp());
}

class FlutterLearnersApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomTheme(
      boxColor: Colors.green,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.blueAccent,
        ),
        home: Home(),
      ),
    );
  }
}
