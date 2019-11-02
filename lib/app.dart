import 'package:blue_mobile_app/account/account_screen.dart';
import 'package:blue_mobile_app/book/book_screen.dart';
import 'package:blue_mobile_app/info/info_screen.dart';
import 'package:flutter/material.dart';

import 'common/utils.dart';
import 'favourite/favourite_screen.dart';
import 'home/view/home_screen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: [
          InfoScreen(),
          AccountScreen(),
          HomeScreen(),
          BookScreen(),
          FavouriteScreen()
        ].elementAt(_selectedIndex),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: HexColor.colorCustom,
              primaryColor: Colors.blueGrey,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(Icons.info), title: Text("info")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_box), title: Text("account")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("home")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book), title: Text("book")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), title: Text("favourite")),
            ],
            onTap: _onBarItemTap,
          ),
        ));
  }

  void _onBarItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
