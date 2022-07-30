import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/tampilan_awal.dart';
import 'package:gitaran/tampilan_kunci_kunci.dart';
import 'package:audioplayers/audioplayers.dart';
//random
import 'dart:math';

//statefull 'EBarreChordsLima' class that extends another class
class EBarreChordsLima extends StatefulWidget {
  @override
  State<EBarreChordsLima> createState() => _EBarreChordsLimaState();
}

//statefull '_EBarreChordsLimaState' class that extends another class
class _EBarreChordsLimaState extends State<EBarreChordsLima> {
  //random
  Random bilanganRandom = Random();

  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("E Barre Chords"),
        leading: GestureDetector(
          onTap: () {
            Get.toNamed('/fifthBarreChords');
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
                Color.fromARGB(255, 155, 165, 22),
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
          child: Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 700,
              width: 400,
              color: Colors.transparent,
              child: Center(
                child: Container(
                  width: 400,
                  height: 600,
                  color: Colors.amber.withOpacity(0.3),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[                        
                        monteriano('E', 'images/chords/fifthBarreChords/EBarreChords/E.jpg', 'images/chords/fifthBarreChords/EBarreChords/E.jpeg', 'fifthBarreChords/EBarreChords/E.mp3'),
                        monteriano('Em', 'images/chords/fifthBarreChords/EBarreChords/Em.jpg', 'images/chords/fifthBarreChords/EBarreChords/Em.jpeg', 'fifthBarreChords/EBarreChords/E7.mp3'),
                        monteriano('E7', 'images/chords/fifthBarreChords/EBarreChords/E7.jpg', 'images/chords/fifthBarreChords/EBarreChords/E7.jpeg', 'fifthBarreChords/EBarreChords/Em.mp3'),
                        monteriano('Em7', 'images/chords/fifthBarreChords/EBarreChords/Em7.jpg', 'images/chords/fifthBarreChords/EBarreChords/Em7.jpeg', 'fifthBarreChords/EBarreChords/Em7.mp3'),
                        monteriano('Esus', 'images/chords/fifthBarreChords/EBarreChords/Esus.jpg', 'images/chords/fifthBarreChords/EBarreChords/Esus.jpeg', 'fifthBarreChords/EBarreChords/Esus.mp3'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          
        ),
      ),
    );
  }

   //'monteriano' method
  Container monteriano(String namaKunci, String assetName , String assetNameJpeg, String assetAudio) {
    return Container(
      height: 560,
      width: 300,
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(70),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            child: Center(
              child: Text(
                namaKunci,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(70),
                topLeft: Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: <Color> [
                  Color.fromARGB(255, 155, 39, 175),
                  Color.fromARGB(255, 96, 24, 109),
                  Color.fromARGB(255, 2, 98, 136),
                ]
              ),
            ),
          ),
          Container(
            color: Colors.transparent,
            height: 390,
            child: Center(
              child: Container(
                child: SingleChildScrollView(
                  // scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 390,
                        width: 300,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(assetNameJpeg),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 390,
                        width: 300,                    
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(assetName),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(70),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: <Color> [
                  Color.fromARGB(255, 155, 39, 175),
                  Color.fromARGB(255, 96, 24, 109),
                  Color.fromARGB(255, 2, 98, 136),
                  
                ]
              ),
            ),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 3, 131, 182),
                        Color.fromARGB(255, 163, 1, 168),
                      ],
                    ),
                  ),
                  child: Material(
                     borderRadius: BorderRadius.circular(20),
                     color: Colors.transparent,
                     child: InkWell(
                      splashColor: Color.fromARGB(255, 66, 255, 230),
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        final player = AudioCache();
                        player.play(assetAudio);
                      },
                      child: Center(
                        child: Text(
                          "Bunyikan",
                           style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            
          ),
        ]
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