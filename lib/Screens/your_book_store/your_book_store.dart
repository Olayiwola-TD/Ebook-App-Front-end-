import 'package:e_book/Screens/your_book_store/Widgets/novel_book.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

import '../profile_screen/Widgets/favourites.dart';
import 'Widgets/video_player_widget.dart';

class BookStoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/images/book6.png',
      'assets/images/book8.png',
      'assets/images/book6.png',
      'assets/images/book7.png'
    ];
    List<String> videoList = [
      'https://firebasestorage.googleapis.com/v0/b/hstest-d4624.appspot.com/o/book_-_9883%20(540p).mp4?alt=media&token=cc28ee52-25a1-4a4d-a7a4-63413aa18399',
      'https://firebasestorage.googleapis.com/v0/b/hstest-d4624.appspot.com/o/library_-_818%20(720p).mp4?alt=media&token=9851f1ec-5365-4e5e-92e3-4980f0521b2e',
    ];

    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        elevation: 0,
        title: Text(
          'Your Book Store',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        toolbarHeight: height * 9,
      ),
      body: SizedBox(
        height: height * 80,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Novel Books',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.0008,
                      ),
                    ),
                    Text(
                      'See All >',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.0008,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height,
                ),
                SizedBox(
                  height: height * 15,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        NovelBook(image: images[index]),
                  ),
                ),
                SizedBox(
                  height: height * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New Additions',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.0008,
                      ),
                    ),
                    Text(
                      'See All >',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.0008,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height,
                ),
                SizedBox(
                  height: height * 15,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        NovelBook(image: images[index]),
                  ),
                ),
                SizedBox(
                  height: height * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Seven Life Lessons',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.0008,
                      ),
                    ),
                    Text(
                      'See All >',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.0008,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height,
                ),
                Container(
                  height: 190,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    // itemCount: videoList.length,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      String videoUrl = videoList[
                          index]; // Assuming videoList is a list of video URLs

                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          width: 300,
                          color: Colors.grey[300],
                          child: AspectRatio(
                            aspectRatio: 16 / 9,
                            child: VideoPlayerWidget(videoUrl: videoUrl),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: height * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'On Happiness',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.0008,
                      ),
                    ),
                    Text(
                      'See All >',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.0008,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height,
                ),
                SizedBox(
                  height: height * 15,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        NovelBook(image: images[index]),
                  ),
                ),
                SizedBox(
                  height: height * 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'On the meaning of life',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.0008,
                      ),
                    ),
                    Text(
                      'See All >',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.0008,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height,
                ),
                SizedBox(
                  height: height * 15,
                  child: ListView.builder(
                    padding: EdgeInsets.all(0),
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>
                        NovelBook(image: images[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
