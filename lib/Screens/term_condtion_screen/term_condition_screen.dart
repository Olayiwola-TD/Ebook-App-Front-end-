import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  static const String routeName = '/term-and-condition-screen';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, height * 8, 20.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Terms And Conditions',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: height * 2.5,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(height: height * 3),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: height * 2.3,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color.fromRGBO(53, 184, 212, 0.07),
              ),
              height: height * 65,
              child: Theme(
                data: ThemeData(
                  highlightColor: primaryColor, //Does not work
                ),
                child: Scrollbar(
                  child: ListView(
                    padding: EdgeInsets.symmetric(vertical: 0),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 12),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation...',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black54,
                            fontSize: height * 1.9,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 2.5,
            ),
            CustomButton(text: 'Agree', onPressed: () {}, context: context)
            // SizedBox(
            //   height: height * 5.5,
            //   child: c,
            // )
          ],
        ),
      ),
    );
  }
}
