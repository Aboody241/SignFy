import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signfy/features/splash_screen/splash_screen_view.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signfy',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      home: const SplashScreenView(),
    );
  }
}
