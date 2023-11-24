import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(Colors.red, 1),
            buildKey(Colors.blue, 2),
            buildKey(Colors.yellow, 3),
            buildKey(Colors.orange, 4),
            buildKey(Colors.pink, 5),
            buildKey(Colors.purple, 6),
            buildKey(Colors.green, 7),
          ],
        )),
      ),
    );
  }
}
