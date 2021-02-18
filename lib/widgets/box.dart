import 'package:flutter/material.dart';
import 'package:flutter_learners_app/widgets/theme_provider.dart';

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
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    print("A box with index ${widget.index} was removed");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final color = CustomTheme.of(context).boxColor;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 20,
        color: color,
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
