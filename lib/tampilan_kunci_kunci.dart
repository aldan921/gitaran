import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/tampilan_awal.dart';
//random
import 'dart:math';

//statefull 'tampilanKunciKunci' class that extends another class
class tampilanKunciKunci extends StatefulWidget {
  @override
  State<tampilanKunciKunci> createState() => _tampilanKunciKunciState();
}

//statefull '_tampilanKunciKunciState' class that extends another class
class _tampilanKunciKunciState extends State<tampilanKunciKunci> {
  //random
  Random bilanganRandom = Random();

  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Kunci-Kunci"),
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
                Colors.purple,
                Colors.pink,
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
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                height: 640,
                width: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Color.fromARGB(255, 35, 23, 37).withOpacity(0.9),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            montero("1", "Open Chords Minor", '/openChordsTwo'),
                            montero("2", "Open Chords Major", '/openChordsOne'),
                            montero("3", "Minor 7th Chords", '/minorSeventhChords'),
                            montero("4", "Major 7th Chords", '/majorSeventhChords'),
                            montero("5", "Suspended Chords", '/suspendedChords'),
                            profesianaloTwo("6", "5th Barre Chords", '/fifthBarreChords'),
                            profesianaloOne("7", "6th Barre Chords", '/sixthBarreChords'),
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

  //'montero' method
  Material montero(String nomor, String judul, String halaman) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        height: 70,
        width: 260,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 58, 58, 58),
              Color.fromARGB(255, 182, 91, 155),
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            onTap: () {
              Get.toNamed(halaman);
            },
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
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromARGB(255, 172, 22, 72),
                        Color.fromARGB(255, 116, 29, 131),
                        // Color.fromARGB(255, 145, 145, 145),
                        // Color.fromARGB(255, 58, 58, 58),
                      ],
                    ),
                  ),
                  child: Text(
                    judul,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

    //'profesianalo' method
  Material profesianaloOne(String nomor, String judul, String halaman) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        height: 70,
        width: 260,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 58, 58, 58),
              Color.fromARGB(255, 22, 165, 158),
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            onTap: () {
              Get.toNamed(halaman);
            },
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
                        Color.fromARGB(255, 22, 165, 158),
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
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromARGB(255, 22, 165, 158),
                        Color.fromARGB(255, 116, 29, 131),
                        // Color.fromARGB(255, 145, 145, 145),
                        // Color.fromARGB(255, 58, 58, 58),
                      ],
                    ),
                  ),
                  child: Text(
                    judul,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Material profesianaloTwo(String nomor, String judul, String halaman) {
    return Material(
      color: Colors.transparent,
      child: Container(
        margin: EdgeInsets.only(bottom: 25),
        height: 70,
        width: 260,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 58, 58, 58),
              Color.fromARGB(255, 155, 165, 22),
            ],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            onTap: () {
              Get.toNamed(halaman);
            },
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
                        Color.fromARGB(255, 155, 165, 22),
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
                  width: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: <Color>[
                        Color.fromARGB(255, 155, 165, 22),
                        Color.fromARGB(255, 116, 29, 131),
                        // Color.fromARGB(255, 145, 145, 145),
                        // Color.fromARGB(255, 58, 58, 58),
                      ],
                    ),
                  ),
                  child: Text(
                    judul,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
              ],
            ),
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