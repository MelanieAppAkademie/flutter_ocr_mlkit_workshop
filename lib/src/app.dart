import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/textrecognition/presentation/text_recognition.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/topics/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextRecognitionScreen(),
    );
  }
}
