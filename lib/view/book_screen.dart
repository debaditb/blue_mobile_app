import 'package:flutter/material.dart';

import 'app_drawer.dart';

class BookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        drawer: AppDrawer(),
        body: Container());
  }
}
