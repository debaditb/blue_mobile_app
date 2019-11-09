import 'package:flutter/material.dart';
import 'package:blue_mobile_app/common/utils.dart';

class DiscoveryCustomerInformation extends StatelessWidget {

  final String flow;

  DiscoveryCustomerInformation(this.flow);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor.getColorFromHex("#2B287C"),
        body: DefaultTabController(
          length: 6,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: Container(
                color:HexColor.getColorFromHex("#a5a3ca") ,
                child: TabBar(
                  indicatorColor: HexColor.getColorFromHex("#FDF8F8"),
                  indicatorWeight:3,
                  indicatorPadding: const EdgeInsets.only(left: 2,right: 2),
                  unselectedLabelColor: Colors.grey[700],
                  labelColor: Colors.black,
                  isScrollable: true,
                  labelStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,),
                  tabs: [
                    Tab(text: "Hygiene Services",),
                    Tab(text: "Cook", ),
                    Tab(text: "Car Wash", ),
                    Tab(text: "Pet Walker", ),
                    Tab(text: "Baby Sitter", ),
                    Tab(text: "Driver", ),
                  ],
                ),
              ),
            ),
            body: Container(
              color: Colors.grey,
              child: TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                  Icon(Icons.directions_bike),
                ],
              ),
            ),
          ),
        )
    );
  }


}
