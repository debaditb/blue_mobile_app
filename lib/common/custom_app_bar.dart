import 'package:flutter/material.dart';

class CustomAppBar {

  static PreferredSize getCustomAppBar(BuildContext context) {
    return PreferredSize(
        preferredSize: Size.fromHeight(40.0), // here the desired height
        child: AppBar(
            bottom: PreferredSize(
          child: Container(
            padding: EdgeInsets.only(bottom: 5.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
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
                Expanded(
                  child: Icon(
                    Icons.my_location,
                    color: Colors.white,
                  ),
                  flex: 1,
                ),
              ],
            ),
          ),
        )));
  }

}
