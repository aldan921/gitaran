import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


class tentangAplikasi extends StatefulWidget {

  @override
  State<tentangAplikasi> createState() => _tentangAplikasiState();
}

class _tentangAplikasiState extends State<tentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Tentang Aplikasi"),
        leading: GestureDetector(
          onTap: () {
            Get.toNamed('/');
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(50),
            ),
            height: 10,
            width: 10,
            child: Icon(
              Icons.arrow_back,
              size: 26,
            ),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(200, 194, 0, 184),
                Color.fromARGB(255, 34, 34, 34),
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 560,
                  width: 370,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(199, 27, 27, 27).withOpacity(0.5),
                        Color.fromARGB(200, 76, 10, 151).withOpacity(0.5),
                        Color.fromARGB(200, 194, 0, 184).withOpacity(0.4),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Container(
                    height: 400,
                    width: 300,
                    color: Colors.transparent,
                    margin: EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Text(
                            " Tujuan diciptakannya aplikasi ini yakni sebagai pemandu bagi gitaris pemula terhadap tahapan yang harus dikuasai saat mempelajari gitar. Dengan aplikasi ini, sang gitaris dapat mempelajari materi-materi yang tersedia dan melihat berbagai jenis kunci-kunci gitar mulai dari yang mudah hingga sulit. Tingkat kesulitan tergantung pada penomoran. Semakin besar nomor tersebut, maka semakin sulit kunci-kunci maupun materi-materinya",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              wordSpacing: 1.5,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:25, left:130),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}