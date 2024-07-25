import 'package:flutter/material.dart';

class ScaleTransitionScreen extends StatefulWidget {
  const ScaleTransitionScreen({super.key});

  static const id = 'Scale Transition';
  @override
  State<ScaleTransitionScreen> createState() => _ScaleTransitionScreenState();
}

class _ScaleTransitionScreenState extends State<ScaleTransitionScreen> {
  double begin = 100;
  double end = 400;
  var scaleUp = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ScaleTransitionScreen.id),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TweenAnimationBuilder(
            tween: Tween<double>(
              begin: begin,
              end: end,
            ),
            curve: Curves.easeInOut,
            duration: const Duration(
              seconds: 3,
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
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                var temp = begin;
                begin = end;
                end = temp;
                scaleUp = !scaleUp;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white
            ),
            child: Text(
              scaleUp ? 'Scale down' : 'Scale up',
            ),
          ),
        ],
      ),
    );
  }
}
