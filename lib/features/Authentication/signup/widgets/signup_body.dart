
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final VoidCallback onToggle;
  const SignUpPage({super.key, required this.onToggle});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  bool passVisible = false;
  bool confirmVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Center(
              child: Text('Sign Up', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 12),
            const Center(child: Text('Fist creat your account', style: TextStyle(color: Colors.grey, fontSize: 13))),
            const SizedBox(height: 36),
      
            const TextField(
              decoration: InputDecoration(
                labelText: 'Full name',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(height: 8),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              obscureText: !passVisible,
              decoration: InputDecoration(
                labelText: 'Password',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                suffixIcon: IconButton(
                  icon: Icon(passVisible ? Icons.visibility : Icons.visibility_off, color: Colors.orange),
                  onPressed: () => setState(() => passVisible = !passVisible),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              obscureText: !confirmVisible,
              decoration: InputDecoration(
                labelText: 'Confirm your password',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                suffixIcon: IconButton(
                  icon: Icon(confirmVisible ? Icons.visibility : Icons.visibility_off, color: Colors.orange),
                  onPressed: () => setState(() => confirmVisible = !confirmVisible),
                ),
              ),
            ),
      
            const SizedBox(height: 26),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                backgroundColor: Colors.black,
              ),
              child: const Text('SIGN UP', style: TextStyle(letterSpacing: 1.2)),
            ),
      
            const SizedBox(height: 10),
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const Text('Already have an account? '),
                  GestureDetector(onTap: widget.onToggle, child: const Text('Login', style: TextStyle(color: Colors.orange))),
                ],
              ),
            ),
      
            const Spacer(),
            Center(child: Text('Skip now -->', style: TextStyle(color: Colors.grey[400]))),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
