import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Hello, Upal"),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(backgroundColor: Colors.white),
          ),
          ListTile(title: Text("Change Location")),
          ListTile(title: Text("My profile"), trailing: Icon(Icons.add)),
          ListTile(title: Text("Add home.service"), trailing: Icon(Icons.add)),
          ListTile(title: Text("My services"), trailing: Icon(Icons.add)),
          ListTile(title: Text("Help"), trailing: Icon(Icons.add)),
          ListTile(title: Text("Information"), trailing: Icon(Icons.add))
        ],
      ),
    );
  }
}
