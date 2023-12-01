import 'package:e_book/Common/Widgets/facebook_button.dart';
import 'package:e_book/Common/Widgets/google_button.dart';
import 'package:e_book/Screens/auth_screens/forget_password_screen.dart';
import 'package:e_book/Screens/auth_screens/sign_up_screen.dart';
import 'package:e_book/Screens/bottom_nav_bar.dart';
import 'package:e_book/Screens/home_screen/home_screen.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../Common/Widgets/custom_button.dart';
import '../../Common/Widgets/custom_textinputfeild.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = '/sign-in-screen';

  const SignInScreen({super.key});

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

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
                // fit: BoxFit.contain,
                height: height * 11,
              ),
              SizedBox(height: height * 6),
              Text(
                'Welcome Back',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: height * 3,
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Welcome to your favorite multifunctional digital\nbook reader.',
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
              const SizedBox(height: 16.0),
              TextInputField(
                context: context,
                icon: Icons.lock_outline,
                obscureText: true,
                hintText: 'Password',
              ),
              SizedBox(height: height * 2),
              Row(
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Colors.black26,
                    ),
                    child: Checkbox(
                      shape: const CircleBorder(),
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value!;
                        });
                      },
                    ),
                  ),
                  const Text('Remember me',
                      style: TextStyle(
                        color: Colors.black26,
                      )),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, ForgetPasswordScreen.routeName);
                    },
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 2),
              CustomButton(
                context: context,
                text: 'Sign in',
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, BottomNavBarScreen.routeName);
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
                      Navigator.pushNamed(context, SignUpScreen.routeName);
                    },
                    child: const Text('Sign up'),
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
