import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class SavedCard extends StatelessWidget {
  const SavedCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      margin: EdgeInsets.symmetric(vertical: height),
      width: double.infinity,
      height: height * 10,
      decoration: BoxDecoration(
          border: Border.all(color: primaryColor),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Image.asset(
            'assets/images/paypal_logo.png', // Replace with the actual image path
            width: 84,
            height: 54,
          ),
          SizedBox(width: 10), // Add spacing between the image and texts
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Visa xxxxxx 3456',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
              Text(
                'Expires on 05/24',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color:
                      Color(0xFF7F8081), // Replace with the actual color value
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
