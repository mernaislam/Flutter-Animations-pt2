import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    List<String> animations = [
      'Opacity Transition',
      'Color Transition',
      'Position Transition',
      'Scale Transition',
      'Rotation Transition',
      'Size Transition',
      'Shape Transition',
      'Curve Animation',
      'Animated Icon',
      'Multiple Property Animations',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select animation:',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            for (var i = 0; i < animations.length; i+=2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, animations[i]);
                      },
                      style: style(),
                      child: Text(
                        animations[i],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, animations[i+1]);
                      },
                      style: style(),
                      child: Text(
                        animations[i+1],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

ButtonStyle? style() {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
    padding: const EdgeInsets.all(20),
  );
}