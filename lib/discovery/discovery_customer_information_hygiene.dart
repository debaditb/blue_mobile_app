import 'package:flutter/material.dart';
import 'package:blue_mobile_app/common/utils.dart';
import 'package:blue_mobile_app/common/column_spacer.dart';
import 'package:blue_mobile_app/common/review_comments.dart';
import 'package:blue_mobile_app/dto/review_dto.dart';

class DiscoveryCustomerInformationHygiene extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Map argumentMap =  ModalRoute.of(context).settings.arguments as Map;
    List<ReviewDTO> reviewComments = argumentMap["reviewComments"];
    return Scaffold(
        backgroundColor: Colors.white,
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 200,
                      color: HexColor.colorCustom,
                      child: DefaultTextStyle(
                        style: TextStyle(fontSize: 15,color: HexColor.colorGold),
                        child: ColumnSpacer(
                          spacing: 5,
                          children: <Widget>[
                            Text("Why Us:", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                            Text("Well trained and experienced maids"),
                            Text("Police and background verified"),
                            Text("Best prices, no more bargaining"),
                            Text("Assured cleanliness"),
                            Text("No advance payments"),
                            Text("Replacement guarantee"),
                          ],
                        ),
                      ),
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Stack(
                      children: <Widget>[
                        Container(
                        padding: const EdgeInsets.all(10.0),
                        height: 200,
                        color:HexColor.getColorFromHex("#a5a3ca") ,
                        child: DefaultTextStyle(
                          style: TextStyle(fontSize: 15,color: HexColor.colorGold),
                          child: ReviewComments(argumentMap["reviewComments"]),
                        ),
                      )
                    ],
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Get trained hygiene expert in 4 simple steps", style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                     onPressed: () => {},
                    color: HexColor.colorCustom,
                    padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 1, style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(20)),
                      child: Text("Information", style: TextStyle(color: Colors.white),),
                    ),
                    FlatButton(
                      onPressed: () => {},
                      color:HexColor.getColorFromHex("#a5a3ca") ,
                      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 1, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("Requirement",style: TextStyle(color: Colors.white),),
                    ),
                    FlatButton(
                      onPressed: () => {},
                      color:HexColor.getColorFromHex("#a5a3ca") ,
                      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 1, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("Selection", style: TextStyle(color: Colors.white),),
                    ),
                    FlatButton(
                      onPressed: () => {},
                      color:HexColor.getColorFromHex("#a5a3ca") ,
                      padding: EdgeInsets.only(left: 5,right: 5,top: 10,bottom: 10),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.grey, width: 1, style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(20)),
                      child: Text("Payment Mode" , style: TextStyle(color: Colors.white),),
                    ),
//                  FlatButton(child: Text("Payment Mode"),),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Icon(Icons.people),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Number of household members"),
                        Text("Including children"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: HexColor.colorCustom, style: BorderStyle.solid, width: 1),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(Icons.arrow_drop_down,),
                            items: <String>['One', 'Two', 'Free', 'Four']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            isExpanded: false,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Container(height: 200,color: Colors.blue,),
            ]
          ),
        ),
    );
  }


}
