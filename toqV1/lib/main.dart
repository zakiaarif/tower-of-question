
import 'package:flutter/material.dart';
// import './homepage.edcedart';
import 'Login_in/Loginpage.dart';




void main() => runApp(ToqApp());


class ToqApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


