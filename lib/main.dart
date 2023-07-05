import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  Future<void> play(int num) async {
    final player = AudioPlayer();
    await player.play(AssetSource('note$num.wav'));
  }

  Expanded buildKey(color, int note){
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () async {
            play(note);
          },
          child: const Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.white30, 1),
              buildKey(Colors.grey[600],2),
              buildKey(Colors.white24,3),
              buildKey(Colors.grey[700],4),
              buildKey(Colors.white12,5),
              buildKey(Colors.grey[800],6),
              buildKey(Colors.white10,7),
            ],
          ),
        ),
      ),
    );
  }
}
