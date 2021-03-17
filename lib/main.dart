import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play(
        'note$num.wav'); //assests/note1.wav isiliye nhi lagaya kyuki bedefault saari audio files note1.wav me hi reheti he
  }

  Expanded keyBuild({int soundNumber, Color btncolor}) {
    return Expanded(
      child: FlatButton(
        color: btncolor,
        onPressed: () {
          playSound(
              soundNumber); //ye isiliye kiya kyuki button bydefault void leta he
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Abhishek Xylophone'),
          backgroundColor: Colors.indigo.shade900,
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            keyBuild(btncolor: Colors.red, soundNumber: 1),
            keyBuild(btncolor: Colors.orange, soundNumber: 2),
            keyBuild(btncolor: Colors.yellow, soundNumber: 3),
            keyBuild(btncolor: Colors.green, soundNumber: 4),
            keyBuild(btncolor: Colors.green.shade800, soundNumber: 5),
            keyBuild(btncolor: Colors.blue.shade600, soundNumber: 6),
            keyBuild(btncolor: Colors.purple, soundNumber: 7),
          ]),
        ),
      ),
    );
  }
}
