import 'package:flutter/material.dart';

class ColorTransitionScreen extends StatefulWidget {
  const ColorTransitionScreen({super.key});

  static const id = 'Color Transition';
  @override
  State<ColorTransitionScreen> createState() => _ColorTransitionScreenState();
}

class _ColorTransitionScreenState extends State<ColorTransitionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ColorTransitionScreen.id),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: TweenAnimationBuilder(
        tween: ColorTween(
          begin: Colors.deepPurple,
          end: Colors.amber,
        ),
        curve: Curves.easeInOut,
        duration: const Duration(
          seconds: 3,
        ),
        builder: (context, value, child) {
          return Container(
            color: value,
          );
        },
      ),
    );
  }
}
