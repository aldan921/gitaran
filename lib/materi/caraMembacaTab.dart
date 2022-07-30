import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/tampilan_awal.dart';
import 'package:gitaran/tampilan_materi.dart';
//random
import 'dart:math';

//statefull 'caraMembacaTab' class that extends another class
class caraMembacaTab extends StatefulWidget {
  @override
  State<caraMembacaTab> createState() => _caraMembacaTabState();
}

//statefull '_caraMembacaTabState' class that extends another class
class _caraMembacaTabState extends State<caraMembacaTab> {
  //random
  Random bilanganRandom = Random();

  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text("Cara Membaca Tab"),
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
                    Container(
                      margin: EdgeInsets.only(top: 70),
                      height: 600,
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.purple.withOpacity(0.4),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            fitztroy(
                              "images/materi/membacaTab/imageOne.jpg",
                              "images/materi/membacaTab/imageTwo.jpg",
                              "images/materi/membacaTab/imageThree.jpg",
                            )
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