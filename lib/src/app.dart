import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/onboarding/domain/content_repo.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/onboarding/presentation/content_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContentScreen(content: contentOnBoarding),
    );
  }
}
