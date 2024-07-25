import 'package:flutter/material.dart';

class ColorTransitionScreen extends StatelessWidget {
  const ColorTransitionScreen({super.key});

  static const id = 'Color Transition';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(id),
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
