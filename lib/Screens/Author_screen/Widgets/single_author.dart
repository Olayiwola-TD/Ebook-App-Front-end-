import 'package:flutter/material.dart';

class SingleAuthor extends StatelessWidget {
  final String img;
  final String name;
  const SingleAuthor({super.key, required this.img, required this.name});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.all(width * 2),
      child: Column(
        children: [
          Container(
            height: width * 25,
            width: width * 25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              img,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: height * 1.2,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
