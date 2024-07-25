import 'package:flutter/material.dart';
import 'package:flutter_animations_pt2/screens/color_transition_screen.dart';
import 'package:flutter_animations_pt2/screens/multiple_property_animations_screen.dart';
import 'package:flutter_animations_pt2/screens/opacity_transition_screen.dart';
import 'package:flutter_animations_pt2/screens/position_transition_screen.dart';
import 'package:flutter_animations_pt2/screens/rotation_transition_screen.dart';
import 'package:flutter_animations_pt2/screens/scale_transition.dart';
import 'package:flutter_animations_pt2/screens/shape_transition_screen.dart';
import 'package:flutter_animations_pt2/screens/size_transition_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const id = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    List<String> animations = [
      OpacityTransitionScreen.id,
      ColorTransitionScreen.id,
      PositionTransitionScreen.id,
      ScaleTransitionScreen.id,
      RotationTransitionScreen.id,
      SizeTransitionScreen.id,
      ShapeTransitionScreen.id,
      'Curve Animation',
      'Animated Icon',
      MultipleTransitionScreen.id,
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animations'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select animation:',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            for (var i = 0; i < animations.length; i+=2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, animations[i]);
                      },
                      style: style(),
                      child: Text(
                        animations[i],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, animations[i+1]);
                      },
                      style: style(),
                      child: Text(
                        animations[i+1],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

ButtonStyle? style() {
  return ElevatedButton.styleFrom(
    foregroundColor: Colors.white,
    backgroundColor: Colors.black,
    padding: const EdgeInsets.all(20),
  );
}