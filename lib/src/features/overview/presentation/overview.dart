import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/image-labelling/presentation/image_label_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/textrecognition/presentation/text_recognition.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/topics/googleml_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/topics/onboarding_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/overview/presentation/topic.dart';

List<Topic> topics = [
  Topic("Einführung", OnboardingScreen()),
  Topic("Google ML Kit", GooglemlScreen()),
  Topic("Text Recognition", TextRecognitionScreen()),
  Topic("Image Labelling", ImageLabelScreen()),
];

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inhalte")),
      body: SizedBox(
        child: ListView.builder(
          itemCount: topics.length,
          itemBuilder:
              (context, index) => Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(Icons.access_time_sharp, size: 50),
                    Text(topics[index].topicname),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => topics[index].nextPage,
                          ),
                        );
                      },
                      icon: Icon(Icons.arrow_forward),
                    ),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}
