import 'package:flutter/material.dart';
import 'package:signfy/core/theme/fonts.dart';
import 'package:signfy/core/utles/size_widgets.dart';
import 'package:signfy/features/home/widgets/home_cards.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Home Page",
          style: AppFonts.poppinsBold().copyWith(fontSize: 22),
        ),
        centerTitle: true,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Column(
                children: [
                  VerticalSpace(2).of(context),
                  CustomAppCats(
                    icon: Icons.sign_language,
                    title: "Sign to Text / Voice",
                    subtitle: "Traslate Sign Language into Text",
                  ),
                  VerticalSpace(2).of(context),
                  CustomAppCats(
                    icon: Icons.text_fields_rounded,
                    title: "Text / Voice to Sign",
                    subtitle: "Traslate Sign Language into Text",
                  ),
                  VerticalSpace(2).of(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
