import 'package:e_book/Common/Widgets/custom_textinputfeild.dart';
import 'package:e_book/Screens/Search_screen/Widgets/search_history.dart';
import 'package:e_book/Screens/Search_screen/Widgets/single_author.dart';
import 'package:e_book/Screens/Search_screen/Widgets/single_searched_book.dart';
import 'package:e_book/Screens/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = '/search-screen';
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.07,
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenHeight * 0.065,
                  child: TextInputField(
                    context: context,
                    hintText: 'Search Topics',
                    icon: Icons.search,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Text(
                  "Search/Menu",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: screenHeight * 0.025,
                    fontWeight: FontWeight.w600,
                    height: 1.24,
                    letterSpacing: -0.0041,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                SizedBox(
                  height: screenHeight * 0.18,
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 0),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: screenWidth / (screenHeight * 0.13),
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) => const SearchHisSingleItem(
                      text: 'Hello world',
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Top Book Search",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: screenHeight * 0.025,
                    fontWeight: FontWeight.w600,
                    height: 1.24,
                    letterSpacing: -0.0041,
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(top: screenWidth * 0.03),
                  child: SizedBox(
                    height: screenHeight * 0.32,
                    child: GridView.builder(
                      padding: const EdgeInsets.only(top: 0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio:
                            screenWidth / (screenHeight * 0.12 * 2),
                        crossAxisCount: 2,
                      ),
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                          const SingleSearchedBook(),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "Top Authors search",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: screenHeight * 0.025,
                    fontWeight: FontWeight.w600,
                    height: 1.24,
                    letterSpacing: -0.0041,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: screenHeight * 0.12,
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: const [
                        SingleAuthorCircular(
                          img:
                              'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                          name: 'Jhon Ray',
                        ),
                        SingleAuthorCircular(
                          img:
                              'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                          name: 'Jhon Ray',
                        ),
                        SingleAuthorCircular(
                          img:
                              'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                          name: 'Jhon Ray',
                        ),
                        SingleAuthorCircular(
                          img:
                              'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                          name: 'Jhon Ray',
                        ),
                        SingleAuthorCircular(
                          img:
                              'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                          name: 'Jhon Ray',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
