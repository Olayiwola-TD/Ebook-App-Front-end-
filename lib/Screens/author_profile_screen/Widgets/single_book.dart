import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleAuthoreBook extends StatelessWidget {
  final String image;
  final String bookname;
  const SingleAuthoreBook(
      {Key? key, required this.image, required this.bookname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Container(
      // width: width * 30,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: height * 1.5,
          ),
          SizedBox(
            width: width * 22,
            child: Text(
              bookname,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
