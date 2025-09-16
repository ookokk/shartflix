import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class CircleGradientBackground extends StatelessWidget {
  const CircleGradientBackground({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = context.colorScheme;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topCenter,
          radius: 0.6,
          colors: [theme.primary, theme.onPrimary, theme.secondary],
          stops: const [0.0, 0.3, 1.0],
        ),
      ),
      child: child,
    );
  }
}
