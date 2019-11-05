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
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0), // here the desired height
            child: AppBar(
                bottom: PreferredSize(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(child: Icon(Icons.menu,color: Colors.white,size: 30,),
                          flex: 1,
                        ),
                        Expanded(
                          flex: 4,
                          child: Theme(
                            data: Theme.of(context).copyWith(splashColor: Colors.transparent),
                            child: Container(
                              width: 100.0,
                              child: TextField(
                                autofocus: false,
                                style: TextStyle(fontSize: 5.0, color: Color(0xFFbdc6cf)),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
//                                  hintText: 'Username',
                                  contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(25.7),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(25.7),
                                  ),

                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(child: Icon(Icons.my_location,color: Colors.white,),flex: 1,),
                      ],
                    ),
                  ),
                ))),
        body: [InfoScreen(), AccountScreen(), HomeScreen(), BookScreen(), FavouriteScreen()].elementAt(_selectedIndex),
        bottomNavigationBar: new Theme(
          data: Theme.of(context).copyWith(
              canvasColor: HexColor.colorCustom,
              primaryColor: Colors.blueGrey,
              textTheme: Theme.of(context).textTheme.copyWith(caption: new TextStyle(color: Colors.white))),
          child: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("info")),
              BottomNavigationBarItem(icon: Icon(Icons.account_box), title: Text("account")),
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("home")),
              BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("book")),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("favourite")),
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
