import 'package:e_book/Common/Widgets/format_drawer/format_drawer.dart';
import 'package:e_book/Common/Widgets/side_menu_bar/Widgets/profile_info.dart';
import 'package:e_book/Screens/Author_screen/author_screen.dart';
import 'package:e_book/Screens/Settings_screen/setting_screen.dart';
import 'package:e_book/Screens/auth_screens/sign_in_screen.dart';
import 'package:e_book/Screens/collections_screen/collections_screen.dart';
import 'package:e_book/Screens/download_screen/download_screen.dart';
import 'package:e_book/Screens/review_screen/review_screen.dart';
import 'package:e_book/Screens/summary_screen/summary_screen.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideMenuBar extends StatelessWidget {
  static const String routeName = '/side-menu-bar';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Dialog(
      insetPadding: EdgeInsets.all(0),
      alignment: Alignment.centerLeft,
      child: Drawer(
        backgroundColor: primaryColor,
        child: SafeArea(
          child: Container(
            width:
                screenWidth * 0.5, // Set the width to half of the screen width
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ProfileInfo(),
                ListTile(
                  leading: const Icon(
                    Icons.star_outline_sharp,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Rating',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, ReviewScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Summary',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, SummaryScreen.routeName);
                  },
                ),
                ListTile(
                  leading: Image.asset(
                    'assets/images/icon2person.png',
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Friend Referral',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    // Handle Friend Referral option
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Author',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, AuthorScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    FontAwesomeIcons.database,
                    size: 18,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Collections',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, CollectionsScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.download_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Downloads',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, DownloadScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.bookmark_outline,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Book Mark',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, DownloadScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.delete_outline,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, DownloadScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.type_specimen_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Book Format',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (context) => FormatDrawer(),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, SettingsScreen.routeName);
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Log out',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, SignInScreen.routeName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
