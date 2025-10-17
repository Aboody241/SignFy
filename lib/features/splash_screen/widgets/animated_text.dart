import 'package:flutter/material.dart';
import 'package:signfy/core/theme/colors.dart';

class SlideFadeText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final Duration duration;
  final Curve curve;

  const SlideFadeText({
    super.key,
    required this.text,
    this.style,
    this.duration = const Duration(seconds: 2),
    this.curve = Curves.easeOut,
  });

  @override
  State<SlideFadeText> createState() => _SlideFadeTextState();
}

class _SlideFadeTextState extends State<SlideFadeText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1), // من تحت
      end: Offset.zero, // مكانه الطبيعي
    ).animate(CurvedAnimation(parent: _controller, curve: widget.curve));

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(
        position: _slideAnimation,
        child: Text(
          widget.text,
          style: widget.style ??
              const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
        ),
      ),
    );
  }
}
