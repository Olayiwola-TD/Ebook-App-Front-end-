import 'package:e_book/Screens/notification_screen/Widgets/single_notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NotificationScreen extends StatelessWidget {
  static const String routeName = '/notification-screen';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
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
          'Notifications',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 2,
            ),
            Text(
              'New',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: height * 2.5,
              ),
            ),
            SizedBox(
              height: height * 2.2,
            ),
            SizedBox(
              height: height * 80,
              child: ListView.builder(
                itemBuilder: (context, index) => SingleNotificationCard(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
