import 'package:flutter/material.dart';
import 'package:vocalscript/speech_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SpeechScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Speach To Text',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
    );
  }
}
