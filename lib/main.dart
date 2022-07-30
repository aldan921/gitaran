import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitaran/materi/anatomiGitar.dart';
import 'package:gitaran/tampilan_awal.dart';
import 'package:gitaran/tampilan_kunci_kunci.dart';
import 'package:gitaran/tampilan_materi.dart';
import 'package:gitaran/tentangAplikasi.dart';
import 'package:gitaran/tesAudio.dart';

//kunci kunci gitar
import 'package:gitaran/kunciKunci/openChordsOne.dart';
import 'package:gitaran/kunciKunci/openChordsTwo.dart';
import 'package:gitaran/kunciKunci/minorSeventhChords.dart';
import 'package:gitaran/kunciKunci/majorSeventhChords.dart';
import 'package:gitaran/kunciKunci/suspendedChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords.dart';

//sixthBarreChords
import 'package:gitaran/kunciKunci/sixthBarreChords/FBarreChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords/GBarreChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords/ABarreChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords/BBarreChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords/CBarreChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords/DBarreChords.dart';
import 'package:gitaran/kunciKunci/sixthBarreChords/EBarreChords.dart';
//sixthBarreChords

//fifthBarreChords
import 'package:gitaran/kunciKunci/fifthBarreChords/FBarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords/GBarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords/ABarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords/BBarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords/CBarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords/DBarreChords.dart';
import 'package:gitaran/kunciKunci/fifthBarreChords/EBarreChords.dart';
//fifthBarreChords
//kunci kunci gitar

//materi-materi gitar
import 'package:gitaran/materi/anatomiGitar.dart';
import 'package:gitaran/materi/senarSenar.dart';
import 'package:gitaran/materi/caraMemegang.dart';
import 'package:gitaran/materi/caraMembacaTab.dart';
import 'package:gitaran/materi/caraMensetem.dart';
import 'package:gitaran/materi/caraMembacaChordbox.dart';
//materi-materi gitar

//main function
void main() {
  runApp(new MyApp());
}

//stateless 'MyApp' class that extends another class
class MyApp extends StatelessWidget {
  //override 'build' method
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      // home: Home(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => tampilanAwal(),
          transition: Transition.cupertino,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/materi',
          page: () => tampilanMateri(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/kunci',
          page: () => tampilanKunciKunci(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/tentangAplikasi',
          page: () => tentangAplikasi(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/caraMembacaTab',
          page: () => caraMembacaTab(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/caraMensetem',
          page: () => caraMensetem(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/caraMensetem',
          page: () => caraMensetem(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/caraMembacaChordbox',
          page: () => caraMembacaChordbox(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),

        
        
        //___UNTUK MATERI___//
        GetPage(
          name: '/anatomiGitar', 
          page: () => anatomiGitar(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/senarSenar', 
          page: () => senarSenar(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/caraMemegang', 
          page: () => caraMemegang(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),

        //___UNTUK KUNCI KUNCI___//
        GetPage(
          name: '/openChordsOne', 
          page: () => openChordsOne(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/openChordsTwo', 
          page: () => openChordsTwo(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/minorSeventhChords', 
          page: () => minorSeventhChords(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/majorSeventhChords', 
          page: () => majorSeventhChords(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/suspendedChords', 
          page: () => suspendedChords(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(seconds: 2),
        ),
        GetPage(
          name: '/sixthBarreChords',
          page: () => sixthBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/fifthBarreChords',
          page: () => fifthBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),

        //sixthBarreChords
        GetPage(
          name: '/FBarreChords',
          page: () => FBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/GBarreChords',
          page: () => GBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/ABarreChords',
          page: () => ABarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/BBarreChords',
          page: () => BBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/CBarreChords',
          page: () => CBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/DBarreChords',
          page: () => DBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/EBarreChords',
          page: () => EBarreChords(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        //sixthBarreChords

        //fifthBarreChords
        GetPage(
          name: '/FBarreChordsLima',
          page: () => FBarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/GBarreChordsLima',
          page: () => GBarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/ABarreChordsLima',
          page: () => ABarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/BBarreChordsLima',
          page: () => BBarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/CBarreChordsLima',
          page: () => CBarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/DBarreChordsLima',
          page: () => DBarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        GetPage(
          name: '/EBarreChordsLima',
          page: () => EBarreChordsLima(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(seconds: 1),
        ),
        //fifthBarreChords
        
      ],
    );
  }
}
