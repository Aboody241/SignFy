
import 'package:flutter/material.dart';
import 'package:signfy/core/theme/colors.dart';
import 'package:signfy/core/widgets/custom_buttons.dart';
import 'package:signfy/features/Authentication/login/login_page_view.dart';
import 'package:signfy/features/on%20board/interface/view/widgets/on_bording_model.dart';

class OnBordingButton extends StatelessWidget {
  const OnBordingButton({
    super.key,
    required this.currentIndex,
    required this.pages,
    required this.controller,
  });

  final int currentIndex;
  final List<OnBordingModel> pages;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomButton1(
        ontap: () {
          if (currentIndex < pages.length - 1) {
            controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPageView(),
              ),
            );
          }
        },
        color: kPrimaryColor,
        title: currentIndex == pages.length - 1 ? "Done" : "Next",
        titleColor: Colors.white,
      ),
    );
  }
}
