import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DownloadBox extends StatefulWidget {
  const DownloadBox({super.key});

  @override
  State<DownloadBox> createState() => _DownloadBoxState();
}

class _DownloadBoxState extends State<DownloadBox> {
  bool isBookMarked = false;
  void bookmarkPressed() {
    if (isBookMarked == false) {
      setState(() {
        isBookMarked = true;
      });
    } else {
      setState(() {
        isBookMarked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        padding: EdgeInsets.all(16),
        color: Color(0xFF1199B6),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/book3.png',
              width: 148,
              height: 183,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Adventures of Holmes',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Arthur Conan Doyle',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'EPUB, 0.78 MB',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 0.5,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          FontAwesomeIcons.bookmark,
                          size: 18,
                          color: isBookMarked ? Colors.amber : Colors.white,
                        ),
                        color: Colors.white,
                        onPressed: () {
                          bookmarkPressed();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.share_outlined),
                        color: Colors.white,
                        onPressed: () {
                          // Add your share button functionality here
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete_outlined),
                        color: Colors.white,
                        onPressed: () {
                          // Add your delete button functionality here
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
