import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Common/Widgets/ratings.dart';
import 'package:e_book/Screens/home_screen/widgets/rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AutorProfileHeader extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  const AutorProfileHeader(
      {Key? key,
      required this.img,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: height * 14,
      child: Center(
        child: Row(
          children: [
            Container(
              width: height * 12,
              height: height * 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    img,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: width * 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Star(rating: 4),
                SizedBox(
                  height: height,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: height * 2.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: width * 20,
                ),
                SizedBox(
                  height: height,
                ),
                SizedBox(
                  width: width * 35,
                  height: height * 5.5,
                  child: CustomButton(
                    haveIcon: true,
                    text: 'Author',
                    onPressed: () {},
                    context: context,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
