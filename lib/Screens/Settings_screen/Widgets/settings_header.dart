import 'package:e_book/Screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsHeader extends StatelessWidget {
  final String img;
  final String title;
  const SettingsHeader({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: height * 12,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: height * 11,
              height: height * 11,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: height * 2.7,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: width * 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height,
                    ),
                    Text(
                      'View profile',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ProfileScreen.routeName);
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_right_outlined,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
