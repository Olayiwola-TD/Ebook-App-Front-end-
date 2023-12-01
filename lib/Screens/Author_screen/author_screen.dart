import 'package:e_book/Screens/Author_screen/Widgets/author_row.dart';
import 'package:flutter/material.dart';

class AuthorScreen extends StatelessWidget {
  static const routeName = '/author-screen';
  AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          width * 5,
          height * 8,
          width * 5,
          0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Authors',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'See',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 2,
            ),
            SizedBox(
              height: height * 82,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: height * 1.5),
                itemCount: 8,
                itemBuilder: (context, index) => AuthorsRow(
                  img1: 'assets/images/author1.png',
                  img2: 'assets/images/author2.png',
                  img3: 'assets/images/author3.png',
                  name1: 'Aristotle',
                  name2: 'Miler',
                  name3: 'Jhon done',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
