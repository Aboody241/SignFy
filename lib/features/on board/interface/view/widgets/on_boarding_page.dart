import 'package:flutter/material.dart';
import 'package:signfy/core/theme/fonts.dart';
import 'package:signfy/core/utles/size_widgets.dart';
import 'package:signfy/features/on%20board/interface/view/widgets/on_bording_model.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.model});

  final OnBordingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(model.image, height: 360, width: double.infinity),
        VerticalSpace(3).of(context),
        Text(
          model.title,
          style: AppFonts.poppinsBold(

          ),
          textAlign: TextAlign.center,
        ),
        VerticalSpace(3).of(context),
        Text(
          model.subTitle,
          style: AppFonts.poppinsMedium(),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
