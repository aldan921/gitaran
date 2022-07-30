import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/tampilan_awal.dart';
import 'package:gitaran/tampilan_materi.dart';
//random
import 'dart:math';

//statefull 'caraMembacaChordbox' class that extends another class
class caraMembacaChordbox extends StatefulWidget {
  @override
  State<caraMembacaChordbox> createState() => _caraMembacaChordboxState();
}

//statefull '_caraMembacaChordboxState' class that extends another class
class _caraMembacaChordboxState extends State<caraMembacaChordbox> {
  //random
  Random bilanganRandom = Random();

  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Cara Membaca Chordbox"),
        leading: GestureDetector(
          onTap: () {
            Get.toNamed('/materi');
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
        actions: <Widget> [
          Padding (
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Get.offNamed('/');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(50),
                ),
                height: 26,
                width: 26,
                child: Icon (
                  Icons.home,
                  size: 26.0,
                ),
              ),
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 96, 24, 109),
                Color.fromARGB(255, 34, 34, 34),
              ],
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {});
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color.fromARGB(
                  255,
                  this.bilanganRandom.nextInt(100),
                  this.bilanganRandom.nextInt(100),
                  this.bilanganRandom.nextInt(100),
                ),
                Color.fromARGB(
                  255,
                  this.bilanganRandom.nextInt(100),
                  this.bilanganRandom.nextInt(100),
                  this.bilanganRandom.nextInt(100),
                ),
                Color.fromARGB(
                  255,
                  this.bilanganRandom.nextInt(100),
                  this.bilanganRandom.nextInt(100),
                  this.bilanganRandom.nextInt(100),
                ),
              ],
            ),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                height: 780,
                width: 400,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 35, 23, 37).withOpacity(0.6),
                ),
                child: Column(
                  children: <Widget>[
                    fitztroy(
                      "images/materi/membacaChordbox/imageOne.jpg",
                      "images/materi/membacaChordbox/imageTwo.jpg",
                      "images/materi/membacaChordbox/imageThree.jpg",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 260,
                      width: 320,
                      color: Colors.purple.withOpacity(0.4),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "   Chordbox atau bagan chord gitar penting untuk dimengerti, sebab mempercepat proses pemahaman terhadap chord gitar yang baru diketahui. Terdapat beberapa poin mengenai cara membaca chordbox antara lain:\n  a. Garis vertikal mewakili senar.\n  b. Garis horizontal mewakili fret.\n c. Titik hitam mewakili penempatan jari.\n d. Angka pada titik hitam mewakili jemari yang digunakan.\n e. Tanda 'O' memiliki arti bahwa senar itu dimainkan.\n  f. Tanda ‘X’ memiliki arti bahwa senar itu di-mute atau tidak dimainkan.\n g. Tanda ‘1fr.’ memiliki arti bahwa chord itu terletak pada fret ke-1.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                                wordSpacing: 1.5,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  //'fitztroy' method
  Container fitztroy(String imageOne, String imageTwo, String imageThree) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.topCenter,
      height: 420,
      width: 320,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
      ),
      child: Center(
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
            children: <Widget>[
              Container(
                height: 420,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageOne),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 420,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageTwo),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Container(
                height: 420,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageThree),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}

/*
  IN CASE OF KONTERIANO ILANG

  //'konteriano' method
  Container konteriano(String nomor, String judul) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: 70,
      width: 260,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 58, 58, 58),
            Color.fromARGB(255, 145, 145, 145),
          ],
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 15),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.pink,
                  Colors.purple,
                ],
              ),
            ),
            child: Center(
              child: Text(
                nomor,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 33,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: <Color>[
                  Color.fromARGB(255, 145, 145, 145),
                  Color.fromARGB(255, 58, 58, 58),
                ],
              ),
            ),
            child: Text(
              judul,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic
              ),
            ),
          ),
        ],
      ),
    );
  }
*/