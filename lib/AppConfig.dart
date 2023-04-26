import 'package:flutter/material.dart';

class AppConfig extends StatelessWidget {
  final String flavor;
  final String appName;
  final String imagePath;

  const AppConfig(
      {required this.flavor,
      required this.appName,
      required this.imagePath,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      home: AppBar(
        title: Text(appName),
      ),
    );
  }

  /*static InheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType();
  }*/
}
