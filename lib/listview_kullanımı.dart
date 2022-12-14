import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({Key? key}) : super(key: key);

  List<Ulke> TumUlkeler = List.generate(
      10,
      (index) => Ulke(
          index + 1, "Başkent ismi ${index + 1}", "Ülke Adı ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ülke Listesi"),
      ),
      body: ListView.separated /*builder*/ (
          itemBuilder: (BuildContext context, int index) {
            var oankiUlke = TumUlkeler[index];
            return Card(
                color: index % 2 == 0
                    ? Colors.purple.shade300
                    : Colors.orange.shade200,
                child: ListTile(
                  onTap: () {
                    print("Tıklandı ${index}");
                    EasyLoading.showToast("Tıklandı");
                    if (index % 2 == 0) {
                      EasyLoading.instance.backgroundColor = Colors.white;
                    } else {
                      EasyLoading.instance.backgroundColor = Colors.black;
                    }
                  },
                  onLongPress: () {
                    _alertDialogIslemleri(context, TumUlkeler);
                  },
                  title: Text(oankiUlke.Ulkeadi),
                  subtitle: Text(oankiUlke.Baskent),
                  leading: CircleAvatar(
                    child: Text(oankiUlke.id.toString()),
                  ),
                ));
          },
          itemCount: TumUlkeler.length,
          separatorBuilder: (context, index) {
            var yeniIndex = index + 1;
            if (yeniIndex % 4 == 0) {
              return Divider(
                thickness: 2,
                color: Colors.red.shade600,
              );
            }

            return SizedBox();
          }),
    );
  }

  ListView klasikListView() {
    return ListView(
      children: TumUlkeler.map((Ulke ulk) => ListTile()).toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContext, secilenUlke) {
    showDialog(
        barrierDismissible: false,
        context: myContext,
        builder: (context) {
          return AlertDialog(
            title: Text(secilenUlke.toString()),
            content: SingleChildScrollView(
              child: ListBody(children: [
                Text("Ülke a " * 2),
                Text("ülke b " * 2),
              ]),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Tamam")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Kapat"))
                ],
              )
            ],
          );
        });
  }
}

class Ulke {
  final int id;
  final String Ulkeadi;
  final String Baskent;

  Ulke(this.id, this.Baskent, this.Ulkeadi);
  @override
  String toString() {
    return "Ülke'nin adı $Ulkeadi, Başkenti $Baskent , Ülke sırası $id";
  }
}
