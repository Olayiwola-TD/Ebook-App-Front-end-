import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Screens/home_screen/widgets/rating_widget.dart';
import 'package:e_book/Screens/home_screen/widgets/readed_people_widget.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class BookFrameLong extends StatelessWidget {
  const BookFrameLong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      width: width * 90,
      height: height * 27,
      child: Row(
        children: [
          Container(
            width: width * 24,
            height: height * 16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/book3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: width * 6,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 1.2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  child: Row(
                    children: [
                      Text(
                        'Psychology Book Hardcover',
                        style: TextStyle(
                          fontSize: width * 3.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(
                            size: 20,
                            Icons.bookmark_outline,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  'Rupi Kumar',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.blueGrey,
                  ),
                ),
                SizedBox(
                  height: height * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RatingWidget(
                      color: greyColor,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    NumberOfReadsWidget(
                      color: greyColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 1.5,
                ),
                SizedBox(
                  width: width * 28,
                  height: height * 5.4,
                  child: CustomButton(
                      text: 'Read Now', onPressed: () {}, context: context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
