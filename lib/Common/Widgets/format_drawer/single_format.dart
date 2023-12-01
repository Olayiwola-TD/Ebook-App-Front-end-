import 'package:flutter/material.dart';

class SingleFormat extends StatelessWidget {
  final String text;
  const SingleFormat({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(
            vertical: height / 1 / 1.7, horizontal: width * 3),
        decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(8),
        ),
        height: height * 4.5,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
