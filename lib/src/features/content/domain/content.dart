import 'package:flutter_ocr_mlkit_workshop/src/features/content/presentation/content_screen.dart';

class Content {
  final String? image;
  final ImageScale? imageScale;
  final String headline, description;

  Content({
    this.image,
    this.imageScale,
    required this.headline,
    required this.description,
  });
}
