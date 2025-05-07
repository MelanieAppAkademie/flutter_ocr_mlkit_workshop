import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/topics/googleml_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/topics/onboarding_screen.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/overview/domain/topic.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/topics/textrec_topic.dart';

List<Topic> topics = [
  Topic("Einführung", OnboardingScreen()),
  Topic("Google ML Kit", GooglemlScreen()),
  Topic("Text Recognition", TextRecTopicScreen()),
  Topic("Image Labelling", GooglemlScreen()),
];

List<Icon> icons = [
  Icon(Icons.bookmark, size: 50),
  Icon(Icons.search, size: 50),
  Icon(Icons.font_download, size: 50),
  Icon(Icons.face_5, size: 50),
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
              (context, index) => TopicTilesWidget(
                icon: icons[index],
                topicname: topics[index].topicname,
                content: topics[index].nextPage,
              ),
        ),
      ),
    );
  }
}

class TopicTilesWidget extends StatelessWidget {
  final Icon icon;
  final String topicname;
  final Widget content;
  const TopicTilesWidget({
    super.key,
    required this.icon,
    required this.topicname,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(spacing: 8, children: [icon, Text(topicname)]),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => content),
              );
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
