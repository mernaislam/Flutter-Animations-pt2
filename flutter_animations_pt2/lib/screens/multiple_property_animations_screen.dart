import 'package:flutter/material.dart';

class MultipleTransitionScreen extends StatelessWidget {
  const MultipleTransitionScreen({super.key});

  static const id = 'Multiple Property Animations';
  @override
  Widget build(BuildContext context) {
    const int duration = 3;
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
        duration: const Duration(
          seconds: duration,
        ),
        builder: (context, value, child) {
          return Align(
            alignment: value,
            child: TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 0,
                end: 1,
              ),
              duration: const Duration(
                seconds: duration,
              ),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(
                      begin: 100,
                      end: 300,
                    ),
                    duration: const Duration(
                      seconds: duration,
                    ),
                    builder: (context, value, child) {
                      return Container(
                        color: Colors.amber,
                        height: value,
                        width: value,
                      );
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
