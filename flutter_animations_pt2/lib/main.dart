import 'package:flutter/material.dart';
import 'package:flutter_animations_pt2/screens/color_transition_screen.dart';
import 'package:flutter_animations_pt2/screens/home_screen.dart';
import 'package:flutter_animations_pt2/screens/opacity_transition_screen.dart';

void main() {
  runApp(const AnimationsApp());
}

class AnimationsApp extends StatelessWidget {
  const AnimationsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Animations',
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        OpacityTransitionScreen.id : (context) => const OpacityTransitionScreen(),
        ColorTransitionScreen.id : (context) => const ColorTransitionScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}