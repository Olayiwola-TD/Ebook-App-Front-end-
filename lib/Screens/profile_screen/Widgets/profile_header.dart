import 'package:e_book/Screens/Edit_profile_screen/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileHeader extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;
  const ProfileHeader(
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
      height: height * 12,
      child: Center(
        child: Row(
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
              width: width * 4,
            ),
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
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, EditProfileScreen.routeName);
                        },
                        icon: Icon(
                          FontAwesomeIcons.pen,
                          size: 17,
                        ))
                  ],
                ),
                SizedBox(
                  height: height / 6,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blueGrey,
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
