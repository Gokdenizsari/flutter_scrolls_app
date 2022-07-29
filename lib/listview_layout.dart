import 'package:flutter/material.dart';

class ListViewLayout extends StatelessWidget {
  const ListViewLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Layout"),
      ),
      body: Container(
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.teal)),
        child: Column(
          children: [
            Text("Başılangıç"),
            Expanded(
                child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  width: 200,
                  color: Color.fromARGB(255, 118, 25, 134),
                ),
                Container(
                  width: 200,
                  color: Colors.purple.shade100,
                ),
                Container(
                  width: 200,
                  color: Colors.orange.shade200,
                ),
                Text("Bitiş"),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
