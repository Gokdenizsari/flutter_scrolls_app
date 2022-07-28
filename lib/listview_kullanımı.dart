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
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        var oankiUlke = TumUlkeler[index];
        return ListTile(
          title: Text(oankiUlke.Ulkeadi),
          subtitle: Text(oankiUlke.Baskent),
          leading: CircleAvatar(
            child: Text(oankiUlke.id.toString()),
          ),
        );
      }),
    );
  }

  ListView klasikListView() {
    return ListView(
      children: TumUlkeler.map((Ulke ulk) => ListTile()).toList(),
    );
  }
}

class Ulke {
  final int id;
  final String Ulkeadi;
  final String Baskent;

  Ulke(this.id, this.Baskent, this.Ulkeadi);
}
