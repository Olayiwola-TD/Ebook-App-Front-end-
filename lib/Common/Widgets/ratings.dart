import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Star extends StatelessWidget {
  final double rating;
  final double itemSize;
  const Star({super.key, required this.rating, this.itemSize = 18});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      direction: Axis.horizontal,
      itemCount: 5,
      rating: rating,
      itemSize: itemSize,
      itemBuilder: (context, _) => const Icon(
        Icons.star_outline,
        color: Colors.amber,
      ),
    );
  }
}
