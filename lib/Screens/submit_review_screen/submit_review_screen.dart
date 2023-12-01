import 'package:flutter/material.dart';

import 'Widgets/nike_name_dialog.dart';

class SubmitReviewScreen extends StatefulWidget {
  static const String routeName = '/submit-review-screen';
  @override
  State<SubmitReviewScreen> createState() => _SubmitReviewScreenState();
}

class _SubmitReviewScreenState extends State<SubmitReviewScreen> {
  int rating = 0; // Variable to store the current rating

  void updateRating(int newRating) {
    setState(() {
      rating = newRating;
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 5, vertical: height * 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle Cancel button press
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return NicknameDialog();
                        },
                      );
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'))),
              ),
              SizedBox(height: height * 3),
              Text(
                'Write a review',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: height * 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => updateRating(1),
                    child: Icon(
                      rating >= 1 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => updateRating(2),
                    child: Icon(
                      rating >= 2 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => updateRating(3),
                    child: Icon(
                      rating >= 3 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => updateRating(4),
                    child: Icon(
                      rating >= 4 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => updateRating(5),
                    child: Icon(
                      rating >= 5 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 2),
              Text(
                'Tap to Change Rating',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: height * 3),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Review Title',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText:
                      'Tell others what you liked (or didn’t like) about this book............',
                ),
              ),
              SizedBox(height: height * 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle Remove Rating button press
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Remove Rating',
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: width * 50,
                        ),
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ],
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
