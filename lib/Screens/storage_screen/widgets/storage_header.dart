import 'package:flutter/material.dart';

class StorageContainer extends StatelessWidget {
  final int percentage;

  StorageContainer({required this.percentage});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      height: height * 13,
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'My Storage',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    height: 1.125,
                    letterSpacing: -0.0008,
                  ),
                ),
                Text(
                  '32 GB / 50GB',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                    letterSpacing: -0.0041,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 80.0,
            height: 80.0,
            child: Stack(
              children: [
                SizedBox(
                  height: height * 6.5,
                  width: height * 6.5,
                  child: CircularProgressIndicator(
                    value: percentage / 100,
                    strokeWidth: 4.0,
                    backgroundColor: Colors.green.withOpacity(0.3),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                  ),
                ),
                Positioned(
                  top: height * 2.1,
                  right: width * 8.8,
                  child: Center(
                    child: Text(
                      '$percentage%',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
