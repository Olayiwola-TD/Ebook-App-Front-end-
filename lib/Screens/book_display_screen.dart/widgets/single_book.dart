import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class SingleBook extends StatelessWidget {
  const SingleBook({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      width: width * 32,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/book7.png',
              width: width * 28,
              height: height * 20,
            ),
            SizedBox(height: height),
            Text(
              'The Advancers and Tech',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: width * 20,
                  height: height * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return FractionallySizedBox(
                        alignment: Alignment.centerLeft,
                        widthFactor:
                            0.82, // Replace with your desired percentage value
                        child: Container(
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: width * 3),
                Text(
                  '82%',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFC9CBCE),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
