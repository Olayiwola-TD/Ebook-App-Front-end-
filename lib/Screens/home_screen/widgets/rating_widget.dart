import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final Color color;

  const RatingWidget({this.color = Colors.white, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: color,
      ),
      width: 39,
      height: 20,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.star_outline,
              size: 13,
              color: Colors.amber,
            ),
            const Text(
              '4.6',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
