import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({super.key});

  static const id = 'Animated Icon';

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen> {
  var _currIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AnimatedIconScreen.id),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: IconButton(
          iconSize: 100,
          icon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (child, anim) => RotationTransition(
              turns: child.key == const ValueKey(1)
                  ? Tween<double>(begin: 1, end: 0).animate(anim)
                  : Tween<double>(begin: 0.75, end: 1).animate(anim),
              child: ScaleTransition(scale: anim, child: child),
            ),
            child: _currIndex == 0
                ? const Icon(
                    Icons.play_arrow,
                    key: ValueKey(1),
                  )
                : const Icon(
                    Icons.pause,
                    key: ValueKey(2),
                  ),
          ),
          onPressed: () {
            setState(() {
              _currIndex = _currIndex == 0 ? 1 : 0;
            });
          },
        ),
      ),
    );
  }
}
