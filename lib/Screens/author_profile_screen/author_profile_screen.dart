import 'package:e_book/Screens/author_profile_screen/Widgets/single_book.dart';
import 'package:e_book/Screens/book_display_screen.dart/widgets/single_book.dart';
import 'package:e_book/Screens/home_screen/widgets/readed_people_widget.dart';
import 'package:e_book/Screens/profile_screen/Widgets/below_header_container.dart';
import 'package:e_book/Screens/profile_screen/Widgets/favourites.dart';
import 'package:e_book/Screens/profile_screen/Widgets/profile_header.dart';
import 'package:flutter/material.dart';

import 'Widgets/author_profile_header.dart';

class AuthorProfileScreen extends StatelessWidget {
  static const String routeName = 'author-profile-screen';
  AuthorProfileScreen({super.key});
  List<String> images = [
    'assets/images/book6.png',
    'assets/images/book8.png',
    'assets/images/book6.png',
    'assets/images/book7.png',
    'assets/images/book6.png',
    'assets/images/book8.png',
    'assets/images/book6.png',
    'assets/images/book7.png',
  ];
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 5, vertical: height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AutorProfileHeader(
              img:
                  'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
              title: 'Omar Faruk',
              subtitle: 'farukupbdt@gmail.com',
            ),
            SizedBox(
              height: height * 2.5,
            ),
            SizedBox(
              height: height * 3,
            ),
            Text(
              "All Books",
              style: TextStyle(
                fontSize: height * 2.7,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: height * 2.5,
            ),
            SizedBox(
              height: height * 50,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 116 / 180,
                ),
                itemCount: 7,
                itemBuilder: (context, index) => SizedBox(
                  height: height * 30,
                  child: SingleAuthoreBook(
                    image: images[index],
                    bookname: 'The Happy Lemon',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
