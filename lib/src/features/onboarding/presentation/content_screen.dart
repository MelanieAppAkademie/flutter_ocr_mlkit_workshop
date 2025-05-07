import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/onboarding/domain/content.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/overview/presentation/overview.dart';

class ContentScreen extends StatefulWidget {
  final List<Content> content;
  const ContentScreen({super.key, required this.content});

  @override
  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: widget.content.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder:
                    (context, index) => ContentWidget(
                      image: widget.content[index].image,
                      headline: widget.content[index].headline,
                      description: widget.content[index].description,
                    ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  widget.content.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DotIndicatorWidget(isActive: index == _pageIndex),
                  ),
                ),
                FloatingActionButton.extended(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OverviewScreen()),
                    );
                  },
                  label: Text("Überspringen"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class DotIndicatorWidget extends StatelessWidget {
  final bool isActive;
  const DotIndicatorWidget({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.deepPurple : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

enum ImageScale { small, medium, large }

class ContentWidget extends StatelessWidget {
  final String? image;
  final ImageScale? imageScale;
  final String headline;
  final String description;
  const ContentWidget({
    super.key,
    this.image,
    this.imageScale,
    required this.headline,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          (image != null)
              ? Image.asset(
                image!,
                height:
                    imageScale == ImageScale.small
                        ? 100
                        : imageScale == ImageScale.medium
                        ? 180
                        : 250,
                fit: BoxFit.cover,
              )
              : Text(""),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
