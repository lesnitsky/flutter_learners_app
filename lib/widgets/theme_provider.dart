import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTheme extends InheritedWidget {
  final Color boxColor;

  const CustomTheme({
    Key key,
    Widget child,
    this.boxColor,
  }) : super(key: key, child: child);

  static CustomTheme of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<CustomTheme>();

  @override
  bool updateShouldNotify(covariant CustomTheme oldWidget) {
    return oldWidget.boxColor == Colors.red && boxColor == Colors.green ||
        oldWidget.boxColor == Colors.green && boxColor == Colors.red;
  }
}
