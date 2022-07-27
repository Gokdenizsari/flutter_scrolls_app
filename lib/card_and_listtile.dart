import 'package:flutter/material.dart';

class CardAndListtile extends StatelessWidget {
  const CardAndListtile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CardAndListtile"),
      ),
      body: Center(
        /*child: SingleChildScrollView()*/
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
                tekListe(),
              ],
            ),
            Text("Konular"),
            ElevatedButton(onPressed: () {}, child: Text("Tıkla"))
          ],
        ),
      ),
    );
  }

  Column tekListe() {
    return Column(
      children: [
        Card(
          color: Colors.teal.shade200,
          shadowColor: Colors.purple.shade200,
          elevation: 6,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            leading: CircleAvatar(
                child: Icon(
              Icons.add,
              color: Colors.black,
            )),
            title: Text("Üst Bilgi"),
            subtitle: Text("Alt Bilgi"),
            trailing: Icon(Icons.add_circle_outlined),
          ),
        ),
        Divider(
          color: Colors.orange.shade300,
          thickness: 1,
          height: 20,
          endIndent: 30,
          indent: 30,
        )
      ],
    );
  }
}
