import 'package:e_book/Screens/home_screen/widgets/rating_widget.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class BookFrame extends StatelessWidget {
  final VoidCallback onPressed;
  const BookFrame({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: greyColor,
        ),
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: width * 40,
        height: width * 52,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width * 35,
              height: width * 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/images/book1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Book name',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  RatingWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abdul Qayum',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7F8081),
                    ),
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
