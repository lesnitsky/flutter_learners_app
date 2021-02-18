import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_learners_app/pages/settings.dart';
import 'package:flutter_learners_app/widgets/box.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Learners App'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Settings();
                  },
                ),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: HomePageContent(),
        ),
      ),
    );
  }
}

class HomePageContent extends StatefulWidget {
  @override
  _HomePageContentState createState() {
    print('create state');
    return _HomePageContentState();
  }
}

class _HomePageContentState extends State<HomePageContent> {
  int count;
  String someString;
  final rand = Random();

  @override
  initState() {
    count = 0;
    someString = 'something';

    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  onAddPressed() {
    setState(() {
      count++;
    });
  }

  onRemovePressed() {
    setState(() {
      count--;
    });
  }

  onShowSnackbarPressed() {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("I'm a snackbar"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    int randomNumber = rand.nextInt(100);

    return Column(
      children: [
        for (int i = 0; i < count; i++)
          Box(
            index: i,
            randomNumber: randomNumber,
          ),
        RaisedButton(
          child: Text("Add a box"),
          onPressed: onAddPressed,
        ),
        RaisedButton(
          child: Text("Remove a box"),
          onPressed: onRemovePressed,
        ),
        RaisedButton(
          child: Text("Show a snackbar"),
          onPressed: onShowSnackbarPressed,
        ),
      ],
    );
  }
}
