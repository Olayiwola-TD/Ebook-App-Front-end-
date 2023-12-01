import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class BelowHeaderContainer1 extends StatelessWidget {
  final String text;
  const BelowHeaderContainer1({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Color.fromRGBO(53, 184, 212, 0.14),
      ),
      width: width * 24,
      height: height * 3.8,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Text(
            maxLines: 1,
            text,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
              fontSize: width * 3,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class BelowHeaderContainer2 extends StatelessWidget {
  final String text;
  const BelowHeaderContainer2({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: Color.fromRGBO(53, 184, 212, 0.14),
      ),
      width: width * 32,
      height: height * 3.8,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: Text(
            maxLines: 1,
            'Refferal Point:  $text',
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
              fontSize: width * 3,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
