import 'package:flutter/material.dart';

class CurveAnimationScreen extends StatelessWidget {
  const CurveAnimationScreen({super.key});

  static const id = 'Curve Animation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(id),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenWidget(
              curve: Curves.easeInOut,
              type: 'easeInOut'
            ),
            SizedBox(
              height: 30,
            ),
            TweenWidget(
              curve: Curves.bounceInOut,
              type: 'bounceInOut',
            ),
            SizedBox(
              height: 30,
            ),
            TweenWidget(
              curve: Curves.elasticInOut,
              type: 'elasticInOut',
            ),
          ],
        ),
      ),
    );
  }
}

class TweenWidget extends StatelessWidget {
  const TweenWidget({
    super.key,
    required this.curve,
    required this.type,
  });

  final Curve curve;
  final String type;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(
        begin: 100,
        end: 200,
      ),
      curve: curve,
      duration: const Duration(
        seconds: 5,
      ),
      child: Center(
        child: Text(
          type,
        ),
      ),
      builder: (context, value, child) {
        return Container(
          height: value,
          width: value,
          color: Colors.amber,
          child: child,
        );
      },
    );
  }
}
