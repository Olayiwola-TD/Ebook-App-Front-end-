import 'dart:ffi';

import 'package:e_book/Screens/Settings_screen/Widgets/settings_header.dart';
import 'package:e_book/Screens/Settings_screen/Widgets/sinlge_setting.dart';
import 'package:e_book/Screens/auth_screens/sign_in_screen.dart';
import 'package:e_book/Screens/home_screen/widgets/readed_people_widget.dart';
import 'package:e_book/Screens/notification_screen/notification_screen.dart';
import 'package:e_book/Screens/payment_screen/payment_screen.dart';
import 'package:e_book/Screens/profile_screen/Widgets/below_header_container.dart';
import 'package:e_book/Screens/profile_screen/Widgets/favourites.dart';
import 'package:e_book/Screens/profile_screen/Widgets/profile_header.dart';
import 'package:e_book/Screens/storage_screen/storage_screen.dart';
import 'package:e_book/Screens/term_condtion_screen/term_condition_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = '/setting-screen';
  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 5, vertical: height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsHeader(
              img:
                  'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
              title: 'Omar Faruk',
            ),
            SizedBox(
              height: height * 2.5,
            ),
            SingleSetting(
              ontap: () {
                Navigator.pushNamed(context, NotificationScreen.routeName);
              },
              icon: Icons.notifications_outlined,
              text: 'Notification',
            ),
            SingleSetting(
              ontap: () {
                Navigator.pushNamed(context, StorageScreen.routeName);
              },
              icon: Icons.folder_open_outlined,
              text: 'Storage',
            ),
            SingleSetting(
              ontap: () {
                Navigator.pushNamed(
                    context, TermsAndConditionsScreen.routeName);
              },
              icon: FontAwesomeIcons.exclamation,
              text: 'Terms & Conditions',
            ),
            SingleSetting(
              ontap: () {
                Navigator.pushNamed(context, PaymentScreen.routeName);
              },
              icon: Icons.payment_outlined,
              text: 'Payment Methods',
            ),
            Container(
              height: 1,
              color: Colors.black12,
            ),
            SizedBox(
              height: height * 14,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(53, 184, 212, 0.14),
                        borderRadius: BorderRadius.circular(8)),
                    height: height * 5,
                    width: height * 5,
                    child: Icon(
                      Icons.logout_outlined,
                      color: Color.fromRGBO(53, 184, 212, 1),
                    ),
                  ),
                  SizedBox(
                    width: width * 4,
                  ),
                  SizedBox(
                    width: width * 62,
                    child: Text(
                      'Log Out',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
