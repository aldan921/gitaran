import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/tampilan_awal.dart';
import 'package:gitaran/tampilan_materi.dart';
//random
import 'dart:math';

//statefull 'anatomiGitar' class that extends another class
class anatomiGitar extends StatefulWidget {
  @override
  State<anatomiGitar> createState() => _anatomiGitarState();
}

//statefull '_anatomiGitarState' class that extends another class
class _anatomiGitarState extends State<anatomiGitar> {
  //random
  Random bilanganRandom = Random();

  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Anatomi Gitar"),
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
                      "images/materi/anatomiGitar/head.jpg",
                      "images/materi/anatomiGitar/neck.jpg",
                      "images/materi/anatomiGitar/body.jpg",
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 430,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.4),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Text(
                              " Gitar terdiri dari 3 bagian utama, antara lain: Head, Neck, dan Body. \n\n\n1. Head\nSebagai pemersatu dari komponen-komponen bagian atas. berfungsi sebagai representasi brand gitar itu sendiri, karena biasanya pada bagian ini terdapat logo dari brand yang memproduksi gitar tersebut. Pada bagian ini terdapat komponen-komponen antara lain sebagai berikut:\n    A.Tuning Machine\n-> berfungsi untuk mengencangkan / mengendurkan strings, agar menghasilkan nada yang akurat.\n  B.Nut\n-> Berfungsi untuk mengatur strings agar tetap di posisinya, agar senar gitar dapat bergetar dengan baik ketika di petik.\n\n\n\n2. Neck\nSebagai pemersatu dari komponen-komponen bagian tengah. Neck merupakan tempat tangan sang gitaris ketika memegang gitar yang biasanya terbuat dari kayu. pada bagian ini terdapat bagian-bagian antara lain sebagai berikut:\n  A.Fingerboard\n-> Sebagai tempat dipasangnya fret. Selain itu, bagian ini juga merupakkan tempat jari sang gitaris saat memainkan chord.\n  B.Fret\n-> sebagai produsen nada dan chord yang dihasilkan ketika jari ditempatkan pada ruang di antara fret. terbuat dari tembaga atau stainless steel, biasanya ada 19 buah fret dalam satu gitar akustik.\n\n\n\n3. Body\nSebagai pemersatu dari komponen-komponen bagian bawah. Bentuknya pun cukup beragam tergantung dari brand gitar tersebut, fungsinya untuk memperkuat suara dari getaran senar. terdapat beberapa komponen pada bagian body antara lain:\n   A.Strings\n-> berfungsi sebagai penghasil suara. Suara dihasilkan ketika strings digetarkan.\n    B.Sound Hole\n-> berfungsi sebagai asal keluarnya suara yang dihasilkan dari getaran strings.\n   C.Bridge\n-> berfungsi sebagai pengait strings agar tetap berada di body.",
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
      height: 250,
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
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageOne),
                  ),
                ),
              ),
              Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageTwo),
                  ),
                ),
              ),
              Container(
                height: 250,
                width: 320,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageThree),
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