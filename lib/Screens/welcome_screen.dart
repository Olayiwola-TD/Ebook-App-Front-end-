import 'package:e_book/Screens/auth_screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = '/welcome-screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamedAndRemoveUntil(
          context, SignInScreen.routeName, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/images/appLogo.png',
          fit: BoxFit.contain,
          height: 200,
        ),
      ),
    );
  }
}
