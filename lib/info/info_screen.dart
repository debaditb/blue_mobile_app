import 'package:blue_mobile_app/common/app_drawer.dart';
import 'package:flutter/material.dart';


class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('InfoScreen'),
        ),
        drawer: AppDrawer(),
        body: Container());
  }
}
