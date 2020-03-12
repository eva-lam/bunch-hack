import 'package:flutter/material.dart';
import 'package:bunch/utils/strings.dart';
import 'package:bunch/utils/widgets_lib.dart';
import '../router.dart';

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[addBackground(),
        RaisedButton(
          onPressed: () => Navigator.pushNamed(context,EMPLOYEES_PROFILE),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Know My Team Better',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
        ],
      ),
    );
  }

  //Adds background Image
  Widget addBackground() {
    return FractionallySizedBox(
      alignment: Alignment.centerRight, //to keep images aligned to right
      widthFactor: .6, //covers about 60% of the screen width
      child: Image.asset(
        Strings.backgroundImage,
        scale: .85,
      ),
     
    );
  }

  Widget addButton(BuildContext context){
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () => Navigator.pushNamed(context,FACTS_DIALOGFLOW),
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: const Text(
              'Know My Team Better',
              style: TextStyle(fontSize: 20)
            ),
          ),
        ),
      ],
    );
        
  }
  

  //Adds welcome text
  Widget addWelcomeText(BuildContext context) {
    return Column(
      children: <Widget>[
        FractionallySizedBox(
          alignment: Alignment.centerLeft, //text aligned to left side
          widthFactor: .6, //covers about half of the screen
          child: Padding(
            padding: EdgeInsets.only(left: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Padding(
                  padding: EdgeInsets.only(left: 12.0, top: 20),
                  child: Text(Strings.subscribeText),
                ),
                SizedBox(
                  height: 40,
                ), //Give some spacing
               
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: factBot(context),
        ),
      ],
    );
  }
}