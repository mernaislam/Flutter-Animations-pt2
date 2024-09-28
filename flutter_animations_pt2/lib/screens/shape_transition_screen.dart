import 'package:flutter/material.dart';

class ShapeTransitionScreen extends StatefulWidget {
  const ShapeTransitionScreen({super.key});

  static const id = 'Shape Transition';

  @override
  State<ShapeTransitionScreen> createState() => _ShapeTransitionScreenState();
}

class _ShapeTransitionScreenState extends State<ShapeTransitionScreen> {
  double begin = 200;
  double end = 0;
  var toCirle = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ShapeTransitionScreen.id),
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
              seconds: 2,
            ),
            builder: (context, value, child) {
              return Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(value),
                    ),
                  ),
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
                toCirle = !toCirle;
              });
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, foregroundColor: Colors.white),
            child: Text(
              toCirle ? 'To Square' : 'To Circle',
            ),
          ),
        ],
      ),
    );
  }
}
