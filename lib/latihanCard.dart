import 'package:flutter/material.dart';

class cardLatihan extends StatelessWidget {
  //'build' method
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              bikinCard(Icons.account_box, "Boks Akun"), //penerapan parameter
              bikinCard(Icons.home, "rumah"),
            ],
          ),
        ),
      ),
    );
  }

  //'bikinCard' method
  Card bikinCard(IconData parameterIconData, String parameterTeks) {
    return Card(
      elevation: 5,
      child: Row(children: <Widget>[
        Container(margin: EdgeInsets.all(5), child: Icon(parameterIconData)),
        Text(parameterTeks),
      ]),
    );
  }
  /*
    catatan
    di method ini dibikin dari klik kanan - refactor - extract method
    jadi bisa buat banyak. ibarat kaya preset gitu lah, jadi tinggal dipanggil

    kan kalo kaya diatas jelek tuh soalya klo dipanggil bakalan sama, nah ayo kita
    bikin yang versi ada parameternya. jadi bisa diganti gainti di bagian tertenru)
  */
}
