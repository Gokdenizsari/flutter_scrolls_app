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
        return Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.red[100 * (index % 10)],
              gradient: LinearGradient(colors: [Colors.orange, Colors.purple]),
              border: Border.all(
                color: Colors.teal,
                width: 5,
              ),
              borderRadius: new BorderRadius.all(new Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue.shade400,
                    offset: Offset(10.0, 5.0),
                    blurRadius: 15),
              ]),
          margin: EdgeInsets.all(20),
          child: Text(
            "Hello ",
            style: TextStyle(fontSize: 24, color: Colors.white),
            textAlign: TextAlign.center,
          ),
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