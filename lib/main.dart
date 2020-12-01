import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(XylophoneApp());
void play(int no){
  final result = AudioCache();
  result.play('note$no.wav');
}
Expanded built({int pl,Color col}){
  return
  Expanded(
    child: FlatButton(
      onPressed: (){
        play(pl);
      },
      color: col,
    ),
  );
}
class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              built(pl: 1, col: Colors.red),
              built(pl:2,col: Colors.orange),
              built(pl:3,col:Colors.yellow),
              built(pl:4,col:Colors.green),
              built(pl:5,col:Colors.blue),
              built(pl:6,col:Colors.purple),
              built(pl:7,col:Colors.black),

      ],
          ),
          ),
        ),
      );
  }
}
