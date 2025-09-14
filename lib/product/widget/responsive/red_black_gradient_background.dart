import 'package:flutter/material.dart';

class RedBlackGradientBackground extends StatelessWidget {
  const RedBlackGradientBackground({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3F0306), Color(0xFF090909)],
        ),
      ),
      child: child,
    );
  }
}
