import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class RedBlackGradientBackground extends StatelessWidget {
  const RedBlackGradientBackground({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = context.colorScheme;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [theme.error, theme.inversePrimary],
        ),
      ),
      child: child,
    );
  }
}
