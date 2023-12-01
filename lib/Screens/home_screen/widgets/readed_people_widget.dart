import 'package:flutter/material.dart';

class NumberOfReadsWidget extends StatelessWidget {
  final Color color;
  final Color textColor;

  const NumberOfReadsWidget(
      {this.color = Colors.white, this.textColor = Colors.black, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: color,
      ),
      width: 90,
      height: 20,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Text(
          '1000 People Read',
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: 8, color: textColor),
        ),
      ),
    );
  }
}
