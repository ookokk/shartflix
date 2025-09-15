import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';

class InformationToast {
  void show(BuildContext context, String text, Color bgColor) {
    final overlay = Overlay.of(context);
    late final OverlayEntry overlayEntry;
    overlayEntry = OverlayEntry(
      builder: (context) => _NotificationWidget(
        text: text,
        bgColor: bgColor,
        onRemove: () => overlayEntry.remove(),
      ),
    );
    overlay.insert(overlayEntry);
  }
}

class _NotificationWidget extends StatefulWidget {
  const _NotificationWidget({
    required this.text,
    required this.bgColor,
    required this.onRemove,
  });

  final String text;
  final Color bgColor;
  final VoidCallback onRemove;

  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<_NotificationWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    );

    _offsetAnimation = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(0, -1),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeOut)),
        weight: 20,
      ),
      TweenSequenceItem(
        tween: ConstantTween<Offset>(Offset.zero),
        weight: 60,
      ),
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(0, 15),
        ).chain(CurveTween(curve: Curves.easeIn)),
        weight: 20,
      ),
    ]).animate(_controller);
    _controller.forward();
    Future.delayed(const Duration(milliseconds: 3000), widget.onRemove);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width * 0.8,
      child: SlideTransition(
        position: _offsetAnimation,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: widget.bgColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              title: Center(
                child: Text(
                  widget.text,
                  style: context.themeData.textTheme.labelMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: widget.onRemove,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
