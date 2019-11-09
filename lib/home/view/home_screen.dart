import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:blue_mobile_app/common/ButtonGroup.dart';
import 'package:blue_mobile_app/common/utils.dart';
import 'package:blue_mobile_app/home/view/HomePageServiceBanner.dart';


import '../../common/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, String> imagesWithText = {
      "Maid": "assets/images/maid.png",
      "Cook": "assets/images/cook.png",
      "Pet Walker": "assets/images/pet-walker.jpg",
      "Baby sitter": "assets/images/baby-care.png",
      "Car Wash": "assets/images/car-wash.jpg",
      "Watch Man": "assets/images/watch-man.png"
    };
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 7.0),
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
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: GestureDetector(
                                child: ClipRRect(
                                    borderRadius: new BorderRadius.circular(10.0),
                                    child: Image.network(
                                      i,
                                      fit: BoxFit.fill,
                                    )),
                                onTap: () {}));
                      },
                    );
                  }).toList(),
                  height: 175,
                ),
              ),
              ButtonGroup(imagesWithText, 3, 1),
              HomePageServiceBanner("assets/images/maid-cleaning-banner.png", "Get the perfect hygiene expert in 3 simple steps", "Book Now",
                  HexColor.getColorFromHex("#D4AF37"), "Hygiene Services"),
              HomePageServiceBanner(
                  "assets/images/cook-banner.png", "Delicious & healthy food everyday", "Book Now", HexColor.getColorFromHex("#D4AF37"), "Cook"),
            ],
          ),
        ));
  }
}
