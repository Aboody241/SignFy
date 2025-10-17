import 'package:flutter/material.dart';
import 'package:signfy/core/utles/size_widgets.dart';
import 'package:signfy/features/on%20board/interface/view/on_boarding_button.dart';
import 'package:signfy/features/on%20board/interface/view/on_bodring_indicator.dart';
import 'package:signfy/features/on%20board/interface/view/widgets/on_boarding_page.dart';
import 'package:signfy/features/on%20board/interface/view/widgets/on_bording_model.dart';

class OnBoardBody extends StatefulWidget {
  const OnBoardBody({super.key});

  @override
  State<OnBoardBody> createState() => _OnBoardBodyState();
}

class _OnBoardBodyState extends State<OnBoardBody> {
  final List<OnBordingModel> pages = [
    OnBordingModel(
      image: "assets/on_board/onboard1.png",
      title: "Real-time Sign Language Translation",
      subTitle:
          "SIGNFY helps you instantly translate sign\nlanguage into text and voice, making\ncommunication easier anywhere.",
    ),
    OnBordingModel(
      image: "assets/on_board/onboard2.png",
      title: "Learn & Improve Communication",
      subTitle:
          "Access interactive lessons and practice\nmaterials to learn sign language and\nimprove your communication skills.",
    ),
    OnBordingModel(
      image: "assets/on_board/onboard3.png",
      title: "Friendly & Easy-to-use Experience",
      subTitle:
          "Enjoy a simple, modern design with a smooth\ninterface that makes using SIGNFY \neffortlessfor everyone.",
    ),
  ];

  final PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Column(
            children: [
              VerticalSpace(9).of(context),

              Expanded(
                child: PageView.builder(
                  itemCount: pages.length,

                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  controller: controller,
                  itemBuilder: (context, index) {
                    return OnBoardingPage(model: pages[index]);
                  },
                ),
              ),

              VerticalSpace(2).of(context),

              OnbordingIndicator(currentIndex: currentIndex, pages: pages),

              VerticalSpace(3).of(context),

              OnBordingButton(
                currentIndex: currentIndex,
                pages: pages,
                controller: controller,
              ),

              VerticalSpace(2).of(context),
            ],
          ),
        ),
      ),
    );
  }
}
