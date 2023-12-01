import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleStorageBox extends StatelessWidget {
  final String img;
  final String txt1;
  final String txt2;
  const SingleStorageBox(
      {super.key, required this.img, required this.txt1, required this.txt2});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      // height: height * 15,
      // width: height * 15,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: height * 10,
              child: Center(
                child: Image.asset(img),
              ),
            ),
          ),
          SizedBox(
            height: height / 2,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: TextStyle(
                    fontSize: height * 2.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: height / 2,
                ),
                Text(
                  txt2,
                  style: TextStyle(
                      fontSize: height * 2,
                      fontWeight: FontWeight.w400,
                      color: Colors.black26),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
