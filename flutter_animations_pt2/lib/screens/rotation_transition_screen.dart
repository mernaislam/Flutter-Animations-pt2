import 'package:flutter/material.dart';

class RotationTransitionScreen extends StatelessWidget {
  const RotationTransitionScreen({super.key});

  static const id = 'Rotation Transition';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(id),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: TweenAnimationBuilder(
        tween: Tween<double>(
          begin: 1,
          end: -3.14,
        ),
        duration: const Duration(
          seconds: 3,
        ),
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            color: Colors.amber,
          ),
        ),
        builder: (context, value, child) {
          return Transform.rotate(
            angle: value,
            child: child,
          );
        },
      ),
    );
  }
}
