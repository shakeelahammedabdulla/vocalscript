import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:vocalscript/colors.dart';

class SpeechScreen extends StatefulWidget {
  const SpeechScreen({super.key});

  @override
  State<SpeechScreen> createState() => _SpeechScreenState();
}

class _SpeechScreenState extends State<SpeechScreen> {
  SpeechToText speechToText = SpeechToText();
  var text = "hold the button and start speaking";
  var isListening = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: AvatarGlow(
        endRadius: 75.0,
        animate: isListening,
        duration: const Duration(milliseconds: 2000),
        glowColor: bgColor,
        repeat: true,
        repeatPauseDuration: const Duration(milliseconds: 100),
        showTwoGlows: true,
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: GestureDetector(
            onTapDown: (details) {
              setState(() {
                isListening = true;
              });
            },
            onTapUp: (details) {
              setState(() {
                isListening = false;
              });
            },
            child: const CircleAvatar(
              backgroundColor: bgColor,
              radius: 35,
              child: Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        leading: const Icon(
          Icons.sort_rounded,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: bgColor,
        title: const Text(
          "Speech To Text",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 16),
        margin: const EdgeInsets.only(bottom: 150),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.black54,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
