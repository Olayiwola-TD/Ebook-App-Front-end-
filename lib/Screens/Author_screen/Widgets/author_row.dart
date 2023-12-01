import 'package:e_book/Screens/Author_screen/Widgets/single_author.dart';
import 'package:flutter/material.dart';

class AuthorsRow extends StatelessWidget {
  final String img1;
  final String img2;
  final String img3;
  final String name1;
  final String name2;
  final String name3;
  const AuthorsRow(
      {super.key,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.name1,
      required this.name2,
      required this.name3});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      margin: EdgeInsets.only(bottom: height * 2.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SingleAuthor(img: img1, name: name1),
              SingleAuthor(img: img2, name: name2),
              SingleAuthor(img: img3, name: name3),
            ],
          )
        ],
      ),
    );
  }
}
