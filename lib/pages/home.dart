import 'package:flutter/material.dart';
import 'package:flutter_learners_app/widgets/custom_list_tile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Learners App'),
      ),
      body: Container(
        child: Column(
          children: [
            ListTile(
              title: Text('Title'),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, quam.',
              ),
              leading: Icon(Icons.account_box),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
            CustomListTile(
              title: Text('Title'),
              subtitle: Text(
                'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, quam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, quam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, quam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius, quam.',
              ),
              leading: Icon(Icons.account_box),
              trailing: IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
