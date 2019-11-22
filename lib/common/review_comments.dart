import 'package:flutter/material.dart';
import 'package:blue_mobile_app/dto/review_dto.dart';
import 'package:blue_mobile_app/common/column_spacer.dart';
import 'package:blue_mobile_app/common/utils.dart';
import 'package:flutter_rating/flutter_rating.dart';

class ReviewComments extends StatelessWidget {
  final List<ReviewDTO> reviewComments;

  ReviewComments(this.reviewComments);

  // First, make your build method like normal.
  // Instead of returning Widgets, return a method that returns widgets.
  // Don't forget to pass in the context!
  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }

  // A builder method almost always returns a ListView.
  // A ListView is a widget similar to Column or Row.
  // It knows whether it needs to be scrollable or not.
  // It has a constructor called builder, which it knows will
  // work with a List.

  Column _buildList(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "What our users are saying about us",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Row(
                children: <Widget>[
                  StarRating(size: 25.0, rating: 3.5, color: Colors.yellow, borderColor: Colors.black, starCount: 5,),
                  Spacer(flex: 1,),
                  Text("3.5/5 Average service rating", textAlign: TextAlign.left, style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ],
              ),
              Divider(
                color: HexColor.getColorFromHex("#A78C3C"),
                endIndent: MediaQuery.of(context).size.width * .5,
                thickness: 2,
                height: 2,
              )
            ],
          ),
        ),
        Container(
          height: 100,
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              color: HexColor.getColorFromHex("#A78C3C"),
              endIndent: MediaQuery.of(context).size.width * .5,
              thickness: 2,
              height: 2,
            ),
            // Must have an item count equal to the number of items!
            itemCount: this.reviewComments.length,
            // A callback that will return a widget.
            itemBuilder: (context, index) {
              // In our case, a DogCard for each doggo.
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: ExactAssetImage('assets/images/cook.png'),
                      minRadius: 15,
                      maxRadius: 30,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                          child: ColumnSpacer(
                            spacing: 3,
                            children: <Widget>[
                              Text(this.reviewComments[index].reviewerName),
                              Text(this.reviewComments[index].location + " " + this.reviewComments[index].reviewDate),
                              Text(this.reviewComments[index].reviewComment, style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
