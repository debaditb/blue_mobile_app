import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../common/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0,bottom: 7.0),
                  child: CarouselSlider(
                    items: [
                      'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
                      'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg',
                      'http://pic3.16pic.com/00/55/42/16pic_5542988_b.jpg',
                      'http://photo.16pic.com/00/38/88/16pic_3888084_b.jpg'
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(color: Colors.white,),
                              child: GestureDetector(
                                  child: ClipRRect(
                                      borderRadius: new BorderRadius.circular(15.0),
                                      child:Image.network(i, fit: BoxFit.fill,)),
                                  onTap: () {

                                  }));
                        },
                      );
                    }).toList(),
                  ),
                )
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          FlatButton(
                          onPressed: () => {},
                          color: Colors.orange,
                          padding: EdgeInsets.all(10.0),
                          child: Row( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                              CircleAvatar(child: Image.asset("assets/images/car-wash.jpg",width: 1,)),
                              Text("Add")
                            ],
                          ),
                        ),],
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blue,),
                )
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(color: Colors.blue,),
                )
            ),
          ],
    ));
  }
}
