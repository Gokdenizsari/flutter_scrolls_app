import 'package:flutter/material.dart';
import 'dart:math' as math;

class CollapsableToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver Bar"),
          backgroundColor: Colors.black,
          expandedHeight: 300,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/aaa.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
                height: 100,
                color: Colors.purple,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Birinci Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            Container(
                height: 100,
                color: Colors.teal,
                alignment: Alignment.centerLeft,
                child: Text("İkinci Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 100,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: Text("Üçüncü Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 100,
                color: Colors.blue,
                alignment: Alignment.centerLeft,
                child: Text("Dördüncü Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 100,
                color: Colors.green,
                alignment: Alignment.centerLeft,
                child: Text("Beşinci Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 100,
                color: Colors.lightBlueAccent,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Altıncı Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            Container(
                height: 100,
                color: Colors.yellow.shade700,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Yedinci Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            Container(
                height: 100,
                color: Colors.grey,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Sekizinci Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            Container(
                height: 100,
                color: Color.fromARGB(66, 179, 38, 38),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Dokuzunca Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            Container(
                height: 100,
                color: Colors.cyan,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Onuncu Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
          ]),
        ),
        SliverPadding(padding: EdgeInsets.all(10)),
        SliverList(
            delegate: SliverChildBuilderDelegate(_dynamicEleman, childCount: 5))

        /*
        SliverFixedExtentList(),
        SliverGrid(),
        SliverGrid.count(crossAxisCount: 2),
        SliverGrid.extent(maxCrossAxisExtent: 150)*/
      ],
    );
  }

  Widget _dynamicEleman(BuildContext context, int index) {
    return Container(
        height: 100,
        color: randomRenk(),
        alignment: Alignment.centerRight,
        child: Text(
          "Random renk Eleman",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ));
  }

  Color randomRenk() {
    return Color.fromARGB(
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
      math.Random().nextInt(255),
    );
  }
}
