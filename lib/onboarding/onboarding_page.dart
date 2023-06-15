import 'package:flutter/cupertino.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final Image image;

  const OnboardingPage({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(50.0),
              alignment: Alignment.center,
              child: image,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16.0),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}