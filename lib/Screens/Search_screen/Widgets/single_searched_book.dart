import 'package:flutter/material.dart';

class SingleSearchedBook extends StatelessWidget {
  const SingleSearchedBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      width: width * 40,
      height: height * 8,
      child: Center(
        child: Row(
          children: [
            Container(
              width: height * 7.5,
              height: height * 7.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/book3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: width * 2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Psychology',
                  style: TextStyle(
                    fontSize: width * 3.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: height,
                ),
                Text(
                  'Rupi Kumar',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blueGrey,
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
