import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleNotificationCard extends StatelessWidget {
  const SingleNotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      padding: EdgeInsets.all(height * 1.8),
      margin: EdgeInsets.only(bottom: height * 2),
      height: height * 11,
      width: width * 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Column(
            children: [
              SizedBox(
                height: height,
              ),
              Icon(
                Icons.check_circle_outline,
                size: height * 3.5,
                color: Colors.black87,
              ),
            ],
          ),
          SizedBox(
            width: width * 4,
          ),
          SizedBox(
            width: width * 58,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You got a new Book',
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: height / 2,
                ),
                Text(
                  maxLines: 2,
                  'School has been dummy text and you are you chool has',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: height * 1.7,
                    color: Colors.black45,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.black54,
                  size: height * 2.6,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
