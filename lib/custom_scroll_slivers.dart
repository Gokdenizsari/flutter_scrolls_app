import 'dart:math' as math;

import 'package:flutter/material.dart';

class CollapsableToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text("Sliver Bar"),
          backgroundColor: Colors.orange.shade400,
          expandedHeight: 200,
          floating: true,
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
                height: 150,
                color: Colors.purple,
                alignment: Alignment.center,
                child: Text(
                  "Birinci Eleman",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                )),
            Container(
                height: 150,
                color: Colors.teal,
                alignment: Alignment.centerRight,
                child: Text("İkinci Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 150,
                color: Colors.red,
                alignment: Alignment.centerLeft,
                child: Text("Üçüncü Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 150,
                color: Colors.blue,
                alignment: Alignment.centerRight,
                child: Text("Dördüncü Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
            Container(
                height: 150,
                color: Colors.green,
                alignment: Alignment.centerLeft,
                child: Text("Beşinci Eleman",
                    style: TextStyle(fontSize: 24, color: Colors.white))),
          ]),
        ), /*
        SliverFixedExtentList(),
        SliverGrid(),
        SliverGrid.count(crossAxisCount: 2),
        SliverGrid.extent(maxCrossAxisExtent: 150)*/
      ],
    );
  }
}
