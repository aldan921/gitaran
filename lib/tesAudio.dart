import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Home extends  StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("play audio")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                final player = AudioCache();
                player.play("audio.mp3");
              },
              icon: const Icon(Icons.play_arrow),
              label: const Text("dari asset"),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  } 
}