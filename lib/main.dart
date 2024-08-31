// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sounds/test.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  //Audio Player
  final player = AudioPlayer();
  playsound(int Soundnumber) {
    player.play(
      AssetSource('A$Soundnumber.mp3'),
    );
  }

  //Black Tiles Fuction
  playSmallBlackTillssound(int SmallSoundNumber) {
    player.play(
      AssetSource('Ab$SmallSoundNumber.mp3'),
    );
  }

//Expand Layer
  PlaysoundExpand({required Color colorn, required int soundn, required n}) {
    return Expanded(
      //Stack
      child: Stack(alignment: Alignment.centerRight, children: [
        //Children of Stack
        Container(
          //White Buttons Shadow
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 30),
            ],
          ),

          width: double.infinity,
          height: double.infinity,
          child: MaterialButton(
            child: Text('Mohamed'),
            color: colorn,
            onPressed: () {
              playsound(soundn);
            },
          ),
        ),

        // Paino Blacktiles
        Container(
          child: MaterialButton(
            onPressed: () {
              playSmallBlackTillssound(n);
            },
            color: Colors.black,
            minWidth: 300,
            height: 30,
          ),
        )
      ]),
    );
  }

//build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Piano",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PlaysoundExpand(colorn: Colors.white, soundn: 1, n: 1),
              PlaysoundExpand(colorn: Colors.white, soundn: 2, n: 2),
              PlaysoundExpand(colorn: Colors.white, soundn: 3, n: 3),
              PlaysoundExpand(colorn: Colors.white, soundn: 4, n: 4),
              PlaysoundExpand(colorn: Colors.white, soundn: 5, n: 5),
              PlaysoundExpand(colorn: Colors.white, soundn: 6, n: 6),
              PlaysoundExpand(colorn: Colors.white, soundn: 7, n: 7),
            ],
          ),
        ),
      ),
    );
  }
}
