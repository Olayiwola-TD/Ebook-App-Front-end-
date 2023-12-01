import 'package:e_book/Common/Widgets/ratings.dart';
import 'package:flutter/material.dart';

class ReviewComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: height * 2),
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 184, 212, 0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sobbing',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'This is Dynamically harness distributed experience and exceptional channels. Monotonectally.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Star(rating: 4),
              Text(
                '23 Jan, veccss',
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
        ],
      ),
    );
  }
}
