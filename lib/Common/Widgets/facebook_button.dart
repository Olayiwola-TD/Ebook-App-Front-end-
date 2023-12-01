import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookButton extends StatelessWidget {
  final VoidCallback onPressed;
  final BuildContext context;

  const FacebookButton({
    Key? key,
    required this.onPressed,
    required this.context,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(
        FontAwesomeIcons.facebookF, // Use the FontAwesomeIcons.facebookF icon
        color: Color.fromRGBO(
            84, 108, 164, 1), // Set the color to the desired shade of blue
      ),
      label: Text(
        'Facebook',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        fixedSize: Size(width * 40, height * 6.3),
        primary: greyColor,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
    );
  }
}
