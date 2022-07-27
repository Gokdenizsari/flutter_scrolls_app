import 'package:flutter/material.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ulke> TumUlkeler = List.generate(
      100,
      (index) => Ulke(
          index + 1, "Başkent ismi ${index + 1}", "Ülke Adı ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ülke Listesi"),
      ),
      body: ListView(
        children: TumUlkeler.map((Ulke ulk) => ListTile(
              title: Text(ulk.Ulkeadi),
              subtitle: Text(ulk.Baskent),
              leading: CircleAvatar(
                child: Text(ulk.id.toString()),
              ),
            )).toList(),
      ),
    );
  }
}

class Ulke {
  final int id;
  final String Ulkeadi;
  final String Baskent;

  Ulke(this.id, this.Baskent, this.Ulkeadi);
}
