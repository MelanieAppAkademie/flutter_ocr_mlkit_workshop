import 'package:flutter_ocr_mlkit_workshop/src/features/content/domain/content.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/presentation/content_screen.dart';

List<Content> onboardingContent = [
  Content(
    image: "./assets/images/mlkit.png",
    imageScale: ImageScale.small,
    headline: "Workshop",
    description: "Flutter OCR und Google ML Kit",
  ),
  Content(
    headline: "Einführung",
    description:
        "🤓 Begrifflichkeiten \n"
        "🧐 Was ist Google ML Kit? \n"
        "🔡 Text Recognition \n"
        "📷 Image Labelling \n"
        "❓ Fragen \n",
  ),
  Content(headline: 'Was bedeutet "OCR"?', description: ""),
  Content(
    image: "./assets/images/ocr_diagram.webp",
    imageScale: ImageScale.large,
    headline: 'Wie funktioniert OCR?',
    description: "",
  ),
  Content(headline: 'Was bedeutet "OCR"?', description: ""),
];

List<Content> googleMLContent = [
  Content(headline: "Was ist Google ML Kit?", description: ""),
  Content(headline: "Wie funzt Google ML Kit", description: ""),
  Content(headline: "API Dokumentation", description: ""),
];
