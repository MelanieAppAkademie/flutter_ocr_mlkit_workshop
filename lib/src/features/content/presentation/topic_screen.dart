import 'package:flutter/material.dart';
import 'package:flutter_ocr_mlkit_workshop/src/features/content/domain/content.dart';

class TopicScreen extends StatefulWidget {
  final List<Content> content;
  final Widget nextPage;
  const TopicScreen({super.key, required this.content, required this.nextPage});

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    imageScale: widget.content[index].imageScale,
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
                    MaterialPageRoute(builder: (context) => widget.nextPage),
                  );
                },
                label: Text("Weiter"),
              ),
            ],
          ),
        ],
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
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (image != null)
              ? InteractiveViewer(
                panEnabled: false,
                child: Image.asset(
                  image!,
                  // height:
                  //     imageScale == ImageScale.small
                  //         ? 100
                  //         : imageScale == ImageScale.medium
                  //         ? 250
                  //         : 300,
                  fit: BoxFit.cover,
                ),
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
