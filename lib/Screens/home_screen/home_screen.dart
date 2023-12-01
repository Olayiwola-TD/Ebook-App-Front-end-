import 'package:e_book/Common/Widgets/custom_textinputfeild.dart';
import 'package:e_book/Common/Widgets/side_menu_bar/side_menu_bar.dart';
import 'package:e_book/Screens/Search_screen/search_screen.dart';
import 'package:e_book/Screens/book_detail_screen.dart';
import 'package:e_book/Screens/cart_screen/cart_screen.dart';
import 'package:e_book/Screens/home_screen/widgets/book_frame_long.dart';
import 'package:e_book/Screens/home_screen/widgets/book_frame_short.dart';
import 'package:e_book/Screens/home_screen/widgets/filter_options.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 52),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        height: 36,
                        width: 36,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                          ),
                          radius: 30,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          color: const Color(0xFFFFC91D).withOpacity(0.1),
                        ),
                        width: 90,
                        height: 36,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                '256',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                              Image.asset(
                                'assets/images/star_icon.png',
                                height: 30,
                                width: 28,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CartScreen.routeName);
                        },
                        icon: Icon(
                          Icons.shopping_cart_outlined,
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                          onPressed: () {
                            //  Navigator.pushNamed(context, SideMenuBar.routeName);
                            showDialog(
                              context: context,
                              builder: (context) => SideMenuBar(),
                            );
                          },
                          icon: const Icon(Icons.menu)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 17),
              const Text(
                'Hello, Frauk',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width * 65,
                    child: TextInputField(
                      onSubmitted: (p0) => {
                        Navigator.of(context).pushNamed(
                          SearchScreen.routeName,
                        ),
                      },
                      hintText: 'Search',
                      context: context,
                      icon: Icons.search,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(width * 20, height * 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MyDialog();
                        },
                      );
                    },
                    child: const Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'New Arrivals',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFC9CBCE)),
                      ),
                    ],
                  ),
                  const Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFC9CBCE)),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => BookFrame(
                    onPressed: () {
                      Navigator.pushNamed(context, BookDetailsScreen.routeName);
                    },
                  ),
                  itemCount: 2,
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'You May Like It',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              //  const SizedBox(height: 24),
              const BookFrameLong(),
              const BookFrameLong(),
            ],
          ),
        ),
      ),
    );
  }
}
