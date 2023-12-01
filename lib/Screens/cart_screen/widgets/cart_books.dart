import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Common/Widgets/ratings.dart';
import 'package:e_book/Screens/home_screen/widgets/rating_widget.dart';
import 'package:e_book/Screens/home_screen/widgets/readed_people_widget.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class CartBook extends StatelessWidget {
  const CartBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      margin: EdgeInsets.only(bottom: height * 2),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black12),
      ),
      width: width * 90,
      height: height * 18,
      child: Row(
        children: [
          Container(
            width: width * 24,
            height: height * 15,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: SizedBox(
                  width: width * 45,
                  child: Row(
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        'Psychology Book Hardcover',
                        style: TextStyle(
                          fontSize: width * 3.5,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Rupi Kumar',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.blueGrey,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: width * 35,
                  ),
                  Text(
                    '\$23.00',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Star(rating: 3),
              SizedBox(
                height: height * 0.5,
              ),
              const Text(
                'Based on 23,545 reviews',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
