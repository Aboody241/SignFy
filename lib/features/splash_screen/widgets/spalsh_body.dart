import 'package:flutter/material.dart';
import 'package:signfy/core/constants/assets.dart';
import 'package:signfy/core/utles/size_widgets.dart';
import 'package:signfy/features/on%20board/interface/view/on_board_view.dart';
import 'package:signfy/features/splash_screen/widgets/animated_text.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardView()),
      );
    });

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            VerticalSpace(30).of(context),
            AspectRatio(
              aspectRatio: 16 / 3,
              child: Image.asset(ImagesLogos.KBlueLogo),
            ),
            VerticalSpace(1).of(context),

            SlideFadeText(
              text: "Sign Language Translator",
              duration: Duration(seconds: 3),
            ),
          ],
        ),
      ),
    );
  }
}
