import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/generated/assets.dart';

class LoginAnimationMovies extends StatefulWidget {
  const LoginAnimationMovies({super.key});

  @override
  State<LoginAnimationMovies> createState() =>
      _LoginAnimationMoviesState();
}

class _LoginAnimationMoviesState extends State<LoginAnimationMovies>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _rotation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat(reverse: true);

    _rotation = Tween<double>(begin: -0.25, end: 0.25).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildHangingImage(String asset) {
    return Column(
      children: [
        Container(width: 2, height: 70, color: Colors.white),
        AnimatedBuilder(
          animation: _rotation,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotation.value,
              alignment: Alignment.topCenter,
              child: child,
            );
          },
          child: Image.asset(
            asset,
            width: context.media.size.width * 0.16,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildHangingImage(Assets.imageLogin1png),
        _buildHangingImage(Assets.imageLogin2png),
        _buildHangingImage(Assets.imageLogin3png),
        _buildHangingImage(Assets.imageLogin4png),
      ],
    );
  }
}
