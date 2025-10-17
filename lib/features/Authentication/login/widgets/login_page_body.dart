import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signfy/core/utles/size_widgets.dart';
import 'package:signfy/features/Authentication/login/cubit/auth_part.dart';
import 'package:signfy/features/Authentication/signup/Signup_view.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              VerticalSpace(15).of(context),
              const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              VerticalSpace(5).of(context),
              const Center(
                child: Text(
                  'Enter your email and password',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              VerticalSpace(10).of(context),
              AuthPart(),

              VerticalSpace(3).of(context),

              // Sign up link
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupView(),
                          ),
                        );
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              VerticalSpace(6).of(context),

              // Divider
              Row(
                children: const [
                  Expanded(child: Divider()),
                  SizedBox(width: 8),
                  Text('Sign in with'),
                  SizedBox(width: 8),
                  Expanded(child: Divider()),
                ],
              ),

              VerticalSpace(3).of(context),

              // Google Sign-In button (نفس الشكل السابق لكن Button أوضح)
              OutlinedButton.icon(
                onPressed: () {
                  // TODO: اربط Google Sign-In هنا
                },
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  side: const BorderSide(color: Colors.grey),
                ),
                icon: SvgPicture.asset(
                  "assets/logos/icons8-google.svg",
                  width: 24,
                  height: 24,
                  semanticsLabel: 'Google logo',
                ),
                label: const Text('Log in with Google'),
              ),

              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
