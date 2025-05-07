import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/overview/presentation/overview.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OverviewScreen(),
    );
  }
}
