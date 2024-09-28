import 'package:flutter/material.dart';

class OpacityTransitionScreen extends StatelessWidget {
  const OpacityTransitionScreen({super.key});

  static const id = 'Opacity Transition';
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
          begin: 0.0,
          end: 1.0,
        ),
        curve: Curves.easeInOut,
        duration: const Duration(
          seconds: 2,
        ),
        child: Container(
          color: Colors.blue,
        ),
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: child,
          );
        },
      ),
    );
  }
}
