import 'package:flutter_ocr_mlkit_workshop/src/features/content/domain/content.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/presentation/topic_screen.dart';

List<Content> onboardingContent = [
  Content(
    image: "./assets/images/mlkit.png",
    imageScale: ImageScale.small,
    headline: "Workshop",
    description: "Willkommen zum Flutter OCR Workshop mit Google ML Kit!",
  ),
  Content(
    headline: "Agenda",
    description:
        "🤓 Begrifflichkeiten\n"
        "🧐 Was ist Google ML Kit?\n"
        "🔡 Text Recognition\n"
        "📷 Image Labelling\n"
        "❓ Fragen\n",
  ),
  Content(
    headline: 'Was bedeutet "OCR"?',
    description:
        "OCR steht für Optical Character Recognition (Optische Zeichenerkennung). \nEs ist eine Technologie, die es ermöglicht, Text in Bildern oder gescannten Dokumenten in maschinenlesbaren Text umzuwandeln. Dadurch können Computer den Text verstehen und weiterverarbeiten.",
  ),
];

List<Content> googleMLContent = [
  Content(
    headline: "Was ist Google ML Kit?",
    description:
        "Google ML Kit ist ein leistungsstarkes SDK von Google, das Machine Learning-Funktionen einfach in mobile Apps (Android und iOS) integriert.\n\n"
        "- Vereinfacht die Integration von ML ohne tiefes ML-Wissen.\n"
        "- Bietet gebrauchsfertige APIs für gängige ML-Aufgaben.",
  ),
  Content(
    headline: "Kernfunktionen und APIs",
    description:
        "- Text Recognition\n"
        "- Image Labeling\n"
        "- Face Detection\n"
        "- Barcode Scanning\n"
        "- Object Detection and Tracking\n"
        "- Pose Detection\n"
        "- Digital Ink Recognition\n"
        "- Language Identification\n"
        "- Translation\n"
        "- Natural Language Processing (NLP) APIs (Cloud)",
  ),
  Content(
    headline: "On-Device vs. Cloud-basierte Verarbeitung",
    description:
        "On-Device:\n"
        "- Vorteile: Schnell, datenschutzfreundlich, funktioniert offline.\n"
        "- Nachteile: Möglicherweise weniger genau, größere App-Größe.\n\n"
        "Cloud-basiert (Firebase ML):\n"
        "- Vorteile: Höhere Genauigkeit, kleinere App-Größe, neueste Modelle.\n"
        "- Nachteile: Netzwerk erforderlich, potenzielle Latenz, Datenschutz beachten.",
  ),
  Content(
    headline: "Integration in Flutter",
    description:
        "Offizielle Flutter-Pakete ('google_mlkit_*') erleichtern die Nutzung der ML Kit APIs in Flutter-Apps.\n\n"
        "- Bieten eine einfache Schnittstelle zu den nativen Android- und iOS-SDKs.",
  ),
  Content(
    headline: "Vorteile der Verwendung von Google ML Kit",
    description:
        "- Einfache Integration.\n"
        "- Plattformübergreifend (Android & iOS).\n"
        "- Flexibilität (On-Device & Cloud).\n"
        "- Umfangreiche Funktionalität.\n"
        "- Oft kostenlos nutzbar (abhängig von der Nutzung).\n"
        "- Kontinuierliche Weiterentwicklung.",
  ),
  Content(
    headline: "Wichtige Überlegungen bei der Nutzung",
    description:
        "- Firebase-Abhängigkeiten erforderlich.\n"
        "- App-Größe bei On-Device Modellen beachten.\n"
        "- Datenschutz bei Cloud-Nutzung berücksichtigen.\n"
        "- Performance kann variieren.\n"
        "- Genauigkeit hängt von verschiedenen Faktoren ab.",
  ),
  Content(
    headline: "Zusammenfassung",
    description:
        "Google ML Kit ist ein mächtiges und benutzerfreundliches SDK, um Machine Learning in mobile Flutter-Apps zu integrieren und intelligente Features zu entwickeln.",
  ),
];

List<Content> textRecContent = [
  Content(
    image: "./assets/images/ocr_diagram.webp",
    imageScale: ImageScale.large,
    headline: "Wie funktioniert Text Recognition im Detail?",
    description: "",
  ),
  Content(
    headline: "Schritt 1: Bildeingabe",
    description:
        "Das Bild, das den zu erkennenden Text enthält, wird der Google ML Kit Text Recognition API übergeben.",
  ),
  Content(
    headline: "Schritt 2: Modellinferenz",
    description:
        "Ein vortrainiertes Deep Learning Modell wird auf das Eingabebild angewendet, um den Text zu analysieren.",
  ),
  Content(
    headline: "Schritt 3: Feature Extraction",
    description:
        "Das Deep Learning Modell extrahiert automatisch relevante visuelle Merkmale aus den Zeichen im Bild. Diese Merkmale helfen, verschiedene Zeichen voneinander zu unterscheiden.",
  ),
  Content(
    headline: "Schritt 4: Sequenzmodellierung",
    description:
        "Moderne Text Recognition Modelle nutzen oft rekurrenten neuronalen Netze (RNNs) oder Transformer-Architekturen.\n\n"
        "- Sie analysieren die sequenzielle Natur von Text (Buchstaben in Wörtern, Wörter in Sätzen).\n"
        "- Dies ermöglicht es dem Modell, den Kontext zu verstehen und die Erkennungsgenauigkeit zu verbessern.",
  ),
  Content(
    headline: "Schritt 5: Klassifikation",
    description:
        "Die extrahierten visuellen Merkmale werden anhand des gelernten Wissens des Modells in spezifische Zeichenklassen (z.B. 'A', 'b', '1', '?') übersetzt.",
  ),
  Content(
    headline: "Schritt 6: Ausgabe",
    description:
        "Die Text Recognition API gibt die erkannte Textstruktur zurück. Diese umfasst:\n\n"
        "- Blöcke: Gruppierungen von Textzeilen (z.B. Absätze).\n"
        "- Zeilen: Einzelne Textzeilen.\n"
        "- Wörter: Einzelne Wörter innerhalb der Zeilen.\n"
        "- Symbole: Einzelne erkannte Zeichen.\n\n"
        "Zusätzlich werden oft die Begrenzungspunkte (Koordinaten) der einzelnen Textbereiche im Bild mitgeliefert.",
  ),
  Content(headline: "Was benötigen wir dafür in Flutter?", description: ""),
  Content(
    image: "./assets/images/gmlkit_pubdev.png",
    imageScale: ImageScale.large,
    headline: "google_ml_kit",
    description: "Dependency",
  ),
  Content(
    image: "./assets/images/image_picker.png",
    imageScale: ImageScale.large,
    headline: "image_picker",
    description: "Dependency",
  ),
];
