import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class SearchHisSingleItem extends StatelessWidget {
  final String text;
  const SearchHisSingleItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      height: height * 3,
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.all(height / 2),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 4,
          vertical: height,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.black54, fontSize: 16),
              ),
              const IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.close_outlined,
                  size: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
