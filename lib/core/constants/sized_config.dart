// lib/utils/size_config.dart
import 'package:flutter/widgets.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;   // 1% of width
  static late double blockHeight;  // 1% of height
  static late double textScaleFactor;

  static void init(BuildContext context) {
    final mq = MediaQuery.of(context);
    screenWidth = mq.size.width;
    screenHeight = mq.size.height;
    textScaleFactor = mq.textScaleFactor;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
  }
}
