import 'package:flutter/material.dart';

class CircleGradientBackground extends StatelessWidget {
  const CircleGradientBackground({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topCenter,
          radius: 0.6,
          colors: [Color(0xFFA20202), Color(0xFF590606), Colors.black],
          stops: [0.0, 0.3, 1.0],
        ),
      ),
      child: child,
    );
  }
}
