import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleButton extends StatelessWidget {
  final VoidCallback onPressed;
  final BuildContext context;

  const GoogleButton({
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
        FontAwesomeIcons.google,
        color: Colors.red,
      ),
      label: Text(
        'Google',
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
