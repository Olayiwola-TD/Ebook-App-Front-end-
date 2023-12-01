import 'package:e_book/Common/Widgets/format_drawer/single_format.dart';
import 'package:e_book/Common/Widgets/side_menu_bar/Widgets/profile_info.dart';
import 'package:e_book/Screens/collections_screen/collections_screen.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormatDrawer extends StatelessWidget {
  static const String routeName = '/side-menu-bar';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Dialog(
      insetPadding: EdgeInsets.all(0),
      alignment: Alignment.centerLeft,
      child: Drawer(
        backgroundColor: primaryColor,
        child: SafeArea(
          child: Container(
            width: width * 50, // Set the width to half of the screen width
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Container(
                  height: height * 7,
                  color: Color(0xFF1199B6),
                  child: Row(
                    children: [
                      SizedBox(
                        width: width * 10,
                      ),
                      Text(
                        'Formats',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 3,
                ),
                SingleFormat(text: 'PDF'),
                SingleFormat(text: 'MP3'),
                SingleFormat(text: 'ACC'),
                SingleFormat(text: 'TXT'),
                SingleFormat(text: 'FB2'),
                SingleFormat(text: 'MOBI'),
                SingleFormat(text: 'RTF'),
                SingleFormat(text: 'DOCS'),
                SingleFormat(text: 'ZIP'),
                SingleFormat(text: 'HTML'),
                SingleFormat(text: 'AZW3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
