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
          expandedHeight: 150,
          
        ),
        /* SliverList(),
        SliverFixedExtentList(),
        SliverGrid(),
        SliverGrid.count(crossAxisCount: 2),
        SliverGrid.extent(maxCrossAxisExtent: 150)*/
      ],
    );
  }
}
