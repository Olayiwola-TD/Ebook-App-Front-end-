import 'package:e_book/Common/Widgets/facebook_button.dart';
import 'package:e_book/Common/Widgets/google_button.dart';
import 'package:e_book/Screens/auth_screens/forget_password_screen.dart';
import 'package:e_book/Screens/auth_screens/sign_in_screen.dart';
import 'package:e_book/Screens/bottom_nav_bar.dart';
import 'package:e_book/Screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

import '../../Common/Widgets/custom_button.dart';
import '../../Common/Widgets/custom_textinputfeild.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up-screen';

  const SignUpScreen({super.key});

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    print('height--------------->   $height');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 10,
              ),
              Image.asset(
                'assets/images/appLogo.png',
                height: height * 11,
              ),
              SizedBox(height: height * 6),
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26.0,
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Register new account here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              const SizedBox(height: 30.0),
              TextInputField(
                context: context,
                icon: Icons.person,
                hintText: 'Email or phone number',
              ),
              SizedBox(height: height * 2),
              TextInputField(
                context: context,
                icon: Icons.lock_outline,
                obscureText: true,
                hintText: 'Password',
              ),
              SizedBox(height: height * 2),
              TextInputField(
                context: context,
                icon: Icons.lock_outline,
                obscureText: true,
                hintText: 'Confirm Password',
              ),
              const SizedBox(height: 25.0),
              CustomButton(
                context: context,
                text: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, BottomNavBarScreen.routeName);
                },
              ),
              const SizedBox(height: 18.0),
              const Text(
                'Or',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 18.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FacebookButton(context: context, onPressed: () {}),
                  SizedBox(width: width * 5),
                  GoogleButton(context: context, onPressed: () {}),
                ],
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.black26),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignInScreen.routeName);
                    },
                    child: const Text('Sign in'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
