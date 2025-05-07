import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/domain/content_repo.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/presentation/topic_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/textrecognition/presentation/text_recognition.dart';

class TextRecTopicScreen extends StatelessWidget {
  const TextRecTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Recognition")),
      body: TopicScreen(
        content: textRecContent,
        nextPage: TextRecognitionScreen(),
      ),
    );
  }
}
