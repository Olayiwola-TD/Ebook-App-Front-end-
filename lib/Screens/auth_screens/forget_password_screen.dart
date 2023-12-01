import 'package:e_book/Common/Widgets/facebook_button.dart';
import 'package:e_book/Common/Widgets/google_button.dart';
import 'package:e_book/Screens/auth_screens/password_creation_screen.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../Common/Widgets/custom_button.dart';
import '../../Common/Widgets/custom_textinputfeild.dart';

class ForgetPasswordScreen extends StatefulWidget {
  static const String routeName = '/forget-screen';

  const ForgetPasswordScreen({super.key});

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                height: height * 20,
              ),
              Image.asset(
                'assets/images/appLogo.png',
                // fit: BoxFit.contain,
                height: height * 11,
              ),
              SizedBox(height: height * 5),
              Text(
                'Forget Password',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: height * 3,
                ),
              ),
              const SizedBox(height: 12.0),
              const Text(
                'Enter the email address or mobile phone number\nassociated with your BookProsly account',
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
              SizedBox(height: height * 4),
              CustomButton(
                context: context,
                text: 'Send Code',
                onPressed: () {
                  Navigator.pushNamed(
                      context, PasswordCreationScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
