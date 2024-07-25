import 'package:flutter/material.dart';

class SizeTransitionScreen extends StatelessWidget {
  const SizeTransitionScreen({super.key});
  
  static const id = 'Size Transition';
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
          begin: 0,
          end: 400,
        ),
        curve: Curves.easeIn,
        duration: const Duration(
          seconds: 4,
        ),
        builder: (context, value, child) {
          return Center(
            child: Container(
              height: value,
              width: value,
              color: Colors.amber,
            ),
          );
        },
      ),
    );
  }
}
