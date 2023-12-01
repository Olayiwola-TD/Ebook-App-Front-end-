import 'package:e_book/Screens/download_screen/widgets/download_box.dart';
import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  static const String routeName = '/download-sreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Download',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              // Add your show more functionality here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DownloadBox(),
            DownloadBox(),
            DownloadBox(),
          ],
        ),
      ),
    );
  }
}
