import 'package:flutter/material.dart';
import 'package:blue_mobile_app/common/utils.dart';
import 'package:blue_mobile_app/discovery/discovery_customer_information.dart';
import 'package:blue_mobile_app/dto/review_dto.dart';

class HomePageServiceBanner extends StatelessWidget {

  final String bannerPic;

  final String bannerText;

  final String buttonText;

  final Color textColor;

  final String flow;


  HomePageServiceBanner(this.bannerPic,this.bannerText,this.buttonText, this.textColor, this.flow);

  Widget build(context) {
    List<ReviewDTO> reviewComments = new List();
    reviewComments.add(ReviewDTO("TestReview", "Kolkata", "Kolkata","Review comment,Review comment,Review comment,Review comment,Review comment,Review comment,"));
    reviewComments.add(ReviewDTO("TestReview", "Kolkata", "Kolkata","Review comment,Review comment,Review comment,Review comment,Review comment,Review comment,"));
    reviewComments.add(ReviewDTO("TestReview", "Kolkata", "Kolkata","Review comment,Review comment,Review comment,Review comment,Review comment,Review comment,"));
    reviewComments.add(ReviewDTO("TestReview", "Kolkata", "Kolkata","Review comment,Review comment,Review comment,Review comment,Review comment,Review comment,"));
    reviewComments.add(ReviewDTO("TestReview", "Kolkata", "Kolkata","Review comment,Review comment,Review comment,Review comment,Review comment,Review comment,"));
    reviewComments.add(ReviewDTO("TestReview", "Kolkata", "Kolkata","Review comment,Review comment,Review comment,Review comment,Review comment,Review comment,"));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(height: 175.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset(this.bannerPic,fit: BoxFit.cover,),
              ),
              Expanded(
                flex: 1,
                child: Container(color: HexColor.colorCustom,
                  padding: const EdgeInsets.all(4),
                  child: Column(
                    children: <Widget>[
                      Expanded(child: Stack(
                        children: <Widget>[
                          Image.asset("assets/images/decorative-line-gold.png",height: 55,),
                          Align(
                            alignment:Alignment.bottomCenter,
                            child: Text(this.bannerText,style: TextStyle(color: this.textColor,fontSize: 15),textAlign: TextAlign.center,)),
                        ]
                      )),
                      Expanded(
                          child: Stack(
                            children: <Widget>[
                              Center(
                                child: FlatButton(
                                  padding: EdgeInsets.only(left: 25.0,right: 25.0,),
                                  onPressed: (){
                                    Navigator.pushNamed(context, '/discovery-customer-information', arguments: {'reviewComments':reviewComments});
                                  },
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(color: this.textColor, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.circular(20)),
                                  child: Text(this.buttonText,style: TextStyle(color: this.textColor,fontSize: 15)),)),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: RotatedBox(
                                  quarterTurns: 2,
                                  child: Image.asset("assets/images/decorative-line-gold.png",height: 55,),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),),
      ),
    );

  }

}