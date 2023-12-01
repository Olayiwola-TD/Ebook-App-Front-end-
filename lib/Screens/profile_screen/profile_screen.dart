import 'package:e_book/Screens/home_screen/widgets/readed_people_widget.dart';
import 'package:e_book/Screens/profile_screen/Widgets/below_header_container.dart';
import 'package:e_book/Screens/profile_screen/Widgets/favourites.dart';
import 'package:e_book/Screens/profile_screen/Widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile-screen';
  ProfileScreen({super.key});
  List<String> images = [
    'assets/images/book6.png',
    'assets/images/book8.png',
    'assets/images/book6.png',
    'assets/images/book7.png'
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
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 5, vertical: height),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHeader(
              img:
                  'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
              title: 'Omar Faruk',
              subtitle: 'farukupbdt@gmail.com',
            ),
            SizedBox(
              height: height * 2.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BelowHeaderContainer1(
                  text: '123 Books',
                ),
                SizedBox(
                  width: width * 3,
                ),
                BelowHeaderContainer1(
                  text: '23 Chapters',
                ),
                SizedBox(
                  width: width * 3,
                ),
                BelowHeaderContainer2(
                  text: '253',
                ),
              ],
            ),
            SizedBox(
              height: height * 3,
            ),
            Text(
              "Favourites",
              style: TextStyle(
                fontSize: height * 2.7,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: height * 1.2,
            ),
            SizedBox(
              height: height * 19,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    FavouriteBook(image: images[index]),
              ),
            ),
            SizedBox(
              height: height * 3,
            ),
            Container(
              height: 1,
              color: Colors.black12,
            ),
            SizedBox(
              height: height * 3,
            ),
            Text(
              "Want To Read",
              style: TextStyle(
                fontSize: height * 2.7,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: height * 1.5,
            ),
            SizedBox(
              height: height * 19,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) =>
                    FavouriteBook(image: images[index + 1]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
