import 'package:e_book/Screens/book_display_screen.dart/book_display_screen.dart';
import 'package:e_book/Screens/home_screen/home_screen.dart';
import 'package:e_book/Screens/payment_screen/payment_screen.dart';
import 'package:e_book/Screens/profile_screen/profile_screen.dart';
import 'package:e_book/Screens/your_book_store/your_book_store.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Widget> pages = [
  const HomeScreen(),
  const BookshelfScreen(),
  BookStoreScreen(),
  ProfileScreen(),
];

class BottomNavBarScreen extends StatefulWidget {
  static const String routeName = '/nav-bar-screen';

  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 25,
        type: BottomNavigationBarType.shifting,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.black38,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 2,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Book',
            icon: Icon(
              FontAwesomeIcons.bookOpen,
              size: 20,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Store',
            icon: Icon(Icons.store_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }
}
