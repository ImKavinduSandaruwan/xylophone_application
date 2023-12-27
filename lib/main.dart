import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Expanded playSound(int number, Color color){
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.load('note$number.wav');
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              playSound(1, Colors.red),
              playSound(2, Colors.orange),
              playSound(3, Colors.yellow),
              playSound(4, Colors.lightGreen),
              playSound(5, Colors.green),
              playSound(6, Colors.blue),
              playSound(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
