import 'package:flutter/material.dart';

class PositionTransitionScreen extends StatelessWidget {
  const PositionTransitionScreen({super.key});

  static const id = 'Position Transition';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(id),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: TweenAnimationBuilder(
        tween: Tween<AlignmentGeometry>(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        curve: Curves.easeInOut,
        duration: const Duration(
          seconds: 3,
        ),
        child: const Text(
          'Some text here',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        builder: (context, value, child) {
          return Center(
            child: Container(
              height: 300,
              width: 300,
              color: Colors.amber,
              child: Align(
                alignment: value,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
