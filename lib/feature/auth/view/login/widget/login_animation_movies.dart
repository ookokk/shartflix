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
    with TickerProviderStateMixin {
  late final List<AnimationController> _controllers;
  late final List<Animation<double>> _rotations;

  final List<String> _images = [
    Assets.imageLogin1png,
    Assets.imageLogin2png,
    Assets.imageLogin3png,
    Assets.imageLogin4png,
  ];
  final List<int> _durations = [4, 5, 6, 7];

  @override
  void initState() {
    super.initState();

    _controllers = _durations.map((duration) {
      return AnimationController(
        vsync: this,
        duration: Duration(seconds: duration),
      )..repeat(reverse: true);
    }).toList();

    _rotations = _controllers.map((controller) {
      return Tween<double>(begin: -0.1, end: 0.15).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeInOut),
      );
    }).toList();
  }

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  Widget _buildHangingImage(int index) {
    return RepaintBoundary(
      child: AnimatedBuilder(
        animation: _rotations[index],
        builder: (context, child) {
          return Transform.rotate(
            angle: _rotations[index].value,
            alignment: Alignment.topCenter,
            child: child,
          );
        },
        child: Column(
          children: [
            Container(width: 1, height: 70, color: Colors.white), // ip
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                _images[index],
                width: context.media.size.width * 0.2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(_images.length, _buildHangingImage),
    );
  }
}
