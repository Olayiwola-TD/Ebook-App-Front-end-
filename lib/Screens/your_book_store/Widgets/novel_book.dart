import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NovelBook extends StatelessWidget {
  final String image;
  const NovelBook({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        width: width * 24,
        child: Image.asset(
          image,
          fit: BoxFit.fitHeight,
          height: height * 10,
        ),
      ),
    );
  }
}
