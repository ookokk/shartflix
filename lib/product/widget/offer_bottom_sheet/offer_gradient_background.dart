import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class OfferGradientBackground extends StatelessWidget {
  const OfferGradientBackground({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            context.colorScheme.surfaceBright,
            context.colorScheme.surfaceBright,
          ],
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topCenter,
                radius: 0.6,
                colors: [
                  context.colorScheme.surfaceContainer,
                  context.colorScheme.surfaceContainerHigh,
                  context.colorScheme.surfaceContainerHighest,
                ],
                stops: const [0.0, 0.3, 1.0],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomCenter,
                radius: 0.6,
                colors: [
                  context.colorScheme.surfaceContainer,
                  context.colorScheme.surfaceContainerHigh,
                  context.colorScheme.surfaceContainerHighest,
                ],
                stops: const [0.0, 0.3, 1.0],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
