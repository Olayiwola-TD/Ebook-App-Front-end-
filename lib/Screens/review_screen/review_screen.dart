import 'package:e_book/Screens/review_screen/Widgets/rating_container.dart';
import 'package:e_book/Screens/review_screen/Widgets/review_comment.dart';
import 'package:e_book/Screens/submit_review_screen/submit_review_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReviewScreen extends StatelessWidget {
  static const String routeName = '/review-screen';
  const ReviewScreen({super.key});

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
          'Customer Reviews',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SubmitReviewScreen.routeName);
            },
            child: Icon(
              FontAwesomeIcons.penToSquare,
              size: height * 2.1,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 5),
          child: Column(
            children: [
              SizedBox(
                height: height * 2,
              ),
              RatingContainer(
                star1Rating: 50,
                star2Rating: 100,
                star3Rating: 250,
                star4Rating: 500,
                star5Rating: 1000,
              ),
              SizedBox(
                height: height * 3,
              ),
              SizedBox(
                height: height * 57,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) => ReviewComment(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
