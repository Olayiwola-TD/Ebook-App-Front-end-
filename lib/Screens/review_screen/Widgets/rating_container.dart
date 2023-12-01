import 'dart:ffi';

import 'package:e_book/Common/Widgets/ratings.dart';
import 'package:flutter/material.dart';

class RatingContainer extends StatelessWidget {
  final int star1Rating;
  final int star2Rating;
  final int star3Rating;
  final int star4Rating;
  final int star5Rating;

  RatingContainer({
    required this.star1Rating,
    required this.star2Rating,
    required this.star3Rating,
    required this.star4Rating,
    required this.star5Rating,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    double averageRating = ((star1Rating * 1) +
            (star2Rating * 2) +
            (star3Rating * 3) +
            (star4Rating * 4) +
            (star5Rating * 5)) /
        (star1Rating + star2Rating + star3Rating + star4Rating + star5Rating);

    int totalNumberOfReviews =
        star1Rating + star2Rating + star3Rating + star4Rating + star5Rating;

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      averageRating.toStringAsFixed(1) + '/',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: height * 4,
                      ),
                    ),
                    Text(
                      '5',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Based on ${totalNumberOfReviews} reviews',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: height * 2,
                ),
                Star(
                  rating: averageRating,
                  itemSize: width * 5.6,
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildRatingRow('5 Stars', star5Rating, context),
                SizedBox(
                  height: height,
                ),
                _buildRatingRow('4 Stars', star4Rating, context),
                SizedBox(
                  height: height,
                ),
                _buildRatingRow('3 Stars', star3Rating, context),
                SizedBox(
                  height: height,
                ),
                _buildRatingRow('2 Stars', star2Rating, context),
                SizedBox(
                  height: height,
                ),
                _buildRatingRow('1 Star  ', star1Rating, context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRatingRow(String label, int ratingCount, BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
        SizedBox(width: 10),
        Container(
          width: width * 27,
          height: height / 1.5,
          decoration: BoxDecoration(
            color: Color.fromRGBO(217, 217, 217, 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: ratingCount /
                (star1Rating +
                    star2Rating +
                    star3Rating +
                    star4Rating +
                    star5Rating),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEDB417),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
