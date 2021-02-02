import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snooker Learners App'),
      ),
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Elevated button was pressed');
            },
            child: Text('Click on me'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Floating action button was pressedd');
        },
      ),
    );
  }
}
