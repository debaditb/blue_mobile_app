import 'package:flutter/material.dart';

class ButtonGroup extends StatelessWidget {
  // a property on this class
  final Map<String, String> imagesWithText;

  final int numberOfButtonInRow;

  final int numberOfRow;

  // a constructor for this class
  ButtonGroup(this.imagesWithText, this.numberOfButtonInRow, this.numberOfRow);

  Widget build(context) {
    // Pass the text down to another widget

    List<Widget> buttons = List();
    List<Container> listOfRow = List();
    int loopIndex = 0;
    imagesWithText.forEach((key, value) => {
          if (loopIndex % this.numberOfButtonInRow == 0)
            {listOfRow.add(Container(margin: const EdgeInsets.only(bottom: 5.0), child: Row(children: buttons))), buttons = List()},
          buttons.add(getButton(key, value)),
          loopIndex++
        });
//    if(imagesWithText.length < this.numberOfButtonInRow){
//
//    }
    listOfRow.add(Container(margin: const EdgeInsets.only(bottom: 5.0), child: Row(children: buttons)));

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: listOfRow,
      ),
    );
  }

  Widget getButton(String buttonText, String imagePath) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: ButtonTheme(
//          height: 70.0,
          child: FlatButton(
            onPressed: () => {},
            color: Colors.transparent,
            padding: EdgeInsets.all(5.0),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey, width: 1, style: BorderStyle.solid), borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: <Widget>[
                Expanded(flex: 1,child: Image.asset(imagePath)),
                Expanded(flex: 1,child: Container(
                  margin: const EdgeInsets.only(left: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(buttonText,textAlign: TextAlign.left,style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
