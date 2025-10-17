
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:signfy/core/theme/colors.dart';
import 'package:signfy/features/on%20board/interface/view/widgets/on_bording_model.dart';

class OnbordingIndicator extends StatelessWidget {
  const OnbordingIndicator({
    super.key,
    required this.currentIndex,
    required this.pages,
  });

  final int currentIndex;
  final List<OnBordingModel> pages;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      position: currentIndex.toDouble(),
      dotsCount: pages.length,
      decorator: DotsDecorator(
        color: Colors.grey,
        activeColor: kPrimaryColor,
      ),
    );
  }
}