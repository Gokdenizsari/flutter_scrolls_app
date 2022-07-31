import 'dart:ui';

import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.teal.shade400, width: 15),
              //borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.purple.shade400,
                  offset: Offset(7.0, 5.0),
                  blurRadius: 15.0,
                )
              ],
              shape: BoxShape.circle,
              color: Colors.orange[100 * ((index + 1)) % 9],
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.yellow],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              /* image: DecorationImage(
                  image: AssetImage("assets/images/Relay.jpg"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter)*/
            ),
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Hi flutter $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 48, color: Colors.white),
              ),
            ),
          ),
          onTap: () => debugPrint("Hi flutter $index tek tıklandı."),
          onDoubleTap: () => debugPrint("Hi flutter $index çift tıklandı."),
          onLongPress: () => debugPrint("Hi flutter $index uzun süre tıklandı."),
        );
      },
    );
  }
}
/*
*/




/*
 GridView.count(
      crossAxisCount: 4,
      scrollDirection: Axis.horizontal,
      primary: false,
      reverse: true,
      padding: EdgeInsets.all(30),
      crossAxisSpacing: 25,
      mainAxisSpacing: 35,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.green.shade300,
          child: Text(
            "Hello Flutter 1",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green.shade300,
          child: Text(
            "Hello Flutter 2",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green.shade300,
          child: Text(
            "Hello Flutter 3",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green.shade300,
          child: Text(
            "Hello Flutter 4",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.green.shade300,
          child: Text(
            "Hello Flutter 5",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }*/ 