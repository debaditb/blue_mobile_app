import 'package:flutter/material.dart';

import 'app_drawer.dart';

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
