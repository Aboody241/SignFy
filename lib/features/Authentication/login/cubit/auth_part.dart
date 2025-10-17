import 'package:flutter/material.dart';
import 'package:signfy/core/constants/nav_bar.dart';
import 'package:signfy/core/theme/colors.dart';
import 'package:signfy/core/utles/size_widgets.dart';
import 'package:signfy/core/widgets/custom_buttons.dart';

class AuthPart extends StatefulWidget {
  const AuthPart({super.key});

  @override
  State<AuthPart> createState() => _AuthPartState();
}

class _AuthPartState extends State<AuthPart> {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: _emailCtrl,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            autocorrect: false,
            decoration: const InputDecoration(
              hintText: 'Email address',
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              suffixIcon: Icon(Icons.email_outlined),
              border: InputBorder.none,
            ),
          ),
        ),

        VerticalSpace(2).of(context),

        // Password
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),

          decoration: BoxDecoration(
            color: kLightGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          child: TextField(
            controller: _passwordCtrl,
            textInputAction: TextInputAction.done,
            obscureText: !_isPasswordVisible,
            autocorrect: false,
            enableSuggestions: false,
            decoration: InputDecoration(
              hintText: 'Password',
              contentPadding: const EdgeInsets.symmetric(vertical: 15),
              border: InputBorder.none,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                tooltip: _isPasswordVisible ? 'Hide password' : 'Show password',
              ),
            ),
            onSubmitted: (_) {
              // TODO: نفّذ تسجيل الدخول الحقيقي هنا
            },
          ),
        ),

        VerticalSpace(5).of(context),

        // Login button
        CustomButton1(
          color: kBlack,
          title: "Login",
          titleColor: kWhite,
          ontap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NavBar()),
            );
          },
        ),
      ],
    );
  }
}
