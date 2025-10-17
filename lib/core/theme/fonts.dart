import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  // الخط الأساسي للتطبيق (Poppins)
  static TextStyle poppinsRegular({
    double fontSize = 14,
    Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }

  // خط للـ headings
  static TextStyle poppinsBold({
    double fontSize = 18,
    Color color = Colors.black,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.bold,
    );
  }

  // خط للـ subtitles
  static TextStyle poppinsMedium({
    double fontSize = 16,
    Color color = Colors.black54,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  // خط للـ captions / التفاصيل الصغيرة
  static TextStyle poppinsLight({
    double fontSize = 12,
    Color color = Colors.black45,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      color: color,
      fontWeight: FontWeight.w300,
    );
  }
}
