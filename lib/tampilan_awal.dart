import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/main.dart';
import 'package:gitaran/tampilan_kunci_kunci.dart';
import 'package:gitaran/tampilan_materi.dart';
import 'package:flutter/services.dart';
//bilangan random tedapat di package ini(dibawah)
import 'dart:math';

//statefull 'tampilanAwal' class 
class tampilanAwal extends StatefulWidget {
  @override
  State<tampilanAwal> createState() => _tampilanAwalState();
}

//statefull '_tampilanAwalState' class that extends another class
class _tampilanAwalState extends State<tampilanAwal>{

  //random
  Random bilanganRandom = Random();



  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            
          });
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: <Color>[
                Color.fromARGB(
                  255,
                  this.bilanganRandom.nextInt(256),
                  this.bilanganRandom.nextInt(256),
                  this.bilanganRandom.nextInt(256),
                ),
                Color.fromARGB(
                  255,
                  this.bilanganRandom.nextInt(256),
                  this.bilanganRandom.nextInt(256),
                  this.bilanganRandom.nextInt(256),
                ),
                Color.fromARGB(
                  255,
                  this.bilanganRandom.nextInt(256),
                  this.bilanganRandom.nextInt(256),
                  this.bilanganRandom.nextInt(256),
                ),
              ],
            ),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage("images/background.jpg"),
                  fit:BoxFit.cover,
                ),
              ),
              child: Container(
                height: 560,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white.withOpacity(0.8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                          image: AssetImage("images/logoapp.png"),
                        ),
                        color: Colors.purple,
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: <Color>[
                            Colors.transparent,
                            Color.fromARGB(255, 1, 151, 161),
                          ],
                        ),
                      ),
                    ), 
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "gitaran",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(169, 218, 0, 120),
                          backgroundColor: Colors.white.withOpacity(0.5)
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.purple,
                                  Colors.pink,
                                ],
                              ),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Get.toNamed('/materi');
                                },
                                child: Center(
                                  child: Text(
                                    "Materi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.purple,
                                  Colors.pink,
                                ],
                              ),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Get.toNamed('/kunci');
                                },
                                child: Center(
                                  child: Text(
                                    "Kunci-Kunci",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: <Color>[
                                  Colors.purple,
                                  Colors.pink,
                                ],
                              ),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Get.toNamed('/tentangAplikasi');
                                },
                                child: Center(
                                  child: Text(
                                    "Tentang Aplikasi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        Material(
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.purple
                              ),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                splashColor: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  SystemNavigator.pop();
                                },
                                child: Center(
                                  child: Text(
                                    "Keluar",
                                    style: TextStyle(
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
}