import 'package:blue_mobile_app/view/utils.dart';
import 'package:blue_mobile_app/view/app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: App(),
      theme: new ThemeData(primarySwatch: HexColor.colorCustom),
    );
  }
}
