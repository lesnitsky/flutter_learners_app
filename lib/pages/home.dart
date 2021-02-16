import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Learners App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Example(),
        ),
      ),
    );
  }
}

class Example extends StatefulWidget {
  @override
  _ExampleState createState() {
    print('create state');
    return _ExampleState();
  }
}

class _ExampleState extends State<Example> {
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
      ],
    );
  }
}

class Box extends StatefulWidget {
  final int index;
  final int randomNumber;

  const Box({Key key, this.index, this.randomNumber}) : super(key: key);

  @override
  _BoxState createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  initState() {
    print("I'm a box with index ${widget.index}");
    super.initState();
  }

  @override
  void didUpdateWidget(covariant Box oldWidget) {
    print('widget with index ${widget.index} updated');
    print('old random number: ${oldWidget.randomNumber}');
    print('current random number: ${widget.randomNumber}');

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print("A box with index ${widget.index} was removed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 20,
        color: Colors.yellow,
        child: Center(
            child: Row(
          children: [
            Text(widget.index.toString()),
            SizedBox(width: 20),
            Text(widget.randomNumber.toString()),
          ],
        )),
      ),
    );
  }
}
