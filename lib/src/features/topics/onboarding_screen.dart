import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/domain/content_repo.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/presentation/topic_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/overview/presentation/overview.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TopicScreen(content: onboardingContent, nextPage: OverviewScreen()),
    );
  }
}
