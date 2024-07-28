import 'package:flutter/material.dart';
import 'package:learn_flutter/loginpage.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: LoginPage()),
    );
  }
}
