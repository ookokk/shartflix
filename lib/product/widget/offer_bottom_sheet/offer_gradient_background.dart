import 'package:flutter/material.dart';

class OfferGradientBackground extends StatelessWidget {
  const OfferGradientBackground({required this.child, super.key});
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
          colors: [Color(0xFF2F0505), Color(0xFF2F0505)],
        ),
      ),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.topCenter,
                radius: 0.6,
                colors: [
                  Color(0xFFEC0909),
                  Color(0xFF590606),
                  Colors.transparent,
                ],
                stops: [0.0, 0.3, 1.0],
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomCenter,
                radius: 0.6,
                colors: [
                  Color(0xFFEC0909),
                  Color(0xFF590606),
                  Colors.transparent,
                ],
                stops: [0.0, 0.3, 1.0],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
