import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      home: const AuthHome(),
    );
  }
}

class AuthHome extends StatefulWidget {
  const AuthHome({super.key});

  @override
  State<AuthHome> createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome> {
  bool showSignUp = false;

  void toggle() => setState(() => showSignUp = !showSignUp);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: showSignUp ? SignUpPage(onToggle: toggle) : SignInPage(onToggle: toggle),
        ),
      ),
    );
  }
}

class SignInPage extends StatelessWidget {
  final VoidCallback onToggle;
  const SignInPage({super.key, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          const Center(
            child: Text(
              'Enter your email and password',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
          const SizedBox(height: 40),

          // Email & password
          const TextField(
            decoration: InputDecoration(
              labelText: 'Email',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Forgot password?', style: TextStyle(color: Colors.orange)),
              )
            ],
          ),

          const SizedBox(height: 26),

          // Login button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
              backgroundColor: Colors.black,
            ),
            child: const Text('LOGIN', style: TextStyle(letterSpacing: 1.2)),
          ),

          const SizedBox(height: 8),
          Center(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Text("Dont have an account? "),
                GestureDetector(
                  onTap: onToggle,
                  child: const Text('Sign up', style: TextStyle(color: Colors.orange)),
                )
              ],
            ),
          ),

          const SizedBox(height: 16),
          Row(children: const [Expanded(child: Divider()), SizedBox(width: 8), Text('Sign In with.'), SizedBox(width: 8), Expanded(child: Divider())]),
          const SizedBox(height: 12),

          // Social icons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook, color: Colors.blue[800])),
              const SizedBox(width: 12),
              IconButton(onPressed: () {}, icon: Icon(Icons.work)), // placeholder for LinkedIn
              const SizedBox(width: 12),
              IconButton(onPressed: () {}, icon: Icon(Icons.g_mobiledata, size: 28)),
            ],
          ),

          const Spacer(),
          Center(child: Text('Skip now -->', style: TextStyle(color: Colors.grey[400]))),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

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
    return Padding(
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
    );
  }
}
