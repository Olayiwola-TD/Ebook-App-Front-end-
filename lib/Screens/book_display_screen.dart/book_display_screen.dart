import 'package:e_book/Common/Widgets/custom_textinputfeild.dart';
import 'package:e_book/Screens/book_display_screen.dart/widgets/single_book.dart';
import 'package:e_book/Screens/download_screen/download_screen.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class BookshelfScreen extends StatefulWidget {
  const BookshelfScreen({super.key});

  @override
  State<BookshelfScreen> createState() => _BookshelfScreenState();
}

class _BookshelfScreenState extends State<BookshelfScreen> {
  @override
  Widget build(BuildContext context) {
    bool isAllBookPressed = true;
    bool isDownloadedPressed = false;

    void allBookButtonPressed() {
      setState(() {
        isDownloadedPressed = false;
        isAllBookPressed = true;
      });
    }

    void dowloadedPressed() {
      setState(() {
        isDownloadedPressed = true;
        isAllBookPressed = false;
      });
    }

    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 72, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: height * 6.5,
                      width: width * 75,
                      child: TextInputField(
                          icon: Icons.search,
                          hintText: 'Email or phone number',
                          context: context)),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      size: width * 7,
                      color: Colors.black87,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              const Text(
                'Your Bookshelf',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      allBookButtonPressed();
                    },
                    child: Column(
                      children: [
                        const Text(
                          'All Books',
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        if (isAllBookPressed)
                          Container(
                            height: 2,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, DownloadScreen.routeName);
                      setState(() {
                        isDownloadedPressed = true;
                      });
                    },
                    child: Column(
                      children: [
                        const Text(
                          'Downloaded',
                        ),
                        if (isDownloadedPressed)
                          Container(
                            height: 2,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: primaryColor,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    '(4)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Reading',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const [
                    SingleBook(),
                    SingleBook(),
                    SingleBook(),
                  ],
                ),
              ),
              SizedBox(
                height: height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '(4)',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: width * 2),
                  Text(
                    'Readed',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color(0xFFC9CBCE),
                    ),
                  ),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 116 / 162,
                children: [
                  Container(
                    height: height * 21,
                    width: width * 30,
                    child: Image.asset(
                      'assets/images/book7.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: height * 21,
                    width: width * 30,
                    child: Image.asset(
                      'assets/images/book6.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    height: height * 21,
                    width: width * 30,
                    child: Image.asset(
                      'assets/images/book1.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: height * 21,
                    width: width * 30,
                    child: Image.asset(
                      'assets/images/book7.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: height * 21,
                    width: width * 30,
                    child: Image.asset(
                      'assets/images/book3.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
