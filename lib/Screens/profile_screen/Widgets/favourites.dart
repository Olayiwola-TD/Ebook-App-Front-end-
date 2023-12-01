import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FavouriteBook extends StatelessWidget {
  final String image;
  const FavouriteBook({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        width: width * 27,
        child: Image.asset(
          image,
          fit: BoxFit.fitHeight,
          height: height * 20,
        ),
      ),
    );
  }
}
