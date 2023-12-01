import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Common/Widgets/read_more_text.dart';
import 'package:e_book/Screens/home_screen/widgets/rating_widget.dart';
import 'package:e_book/Screens/home_screen/widgets/readed_people_widget.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookDetailsScreen extends StatelessWidget {
  static const String routeName = '/book-detail-screen';

  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Book Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          iconSize: 18, // Adjust the icon size as needed
          color: Colors.black87,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Positioned(
            child: Column(
              children: [
                SizedBox(height: height * 16.5),
                Container(
                  height: height * 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: height * 38,
                  child: Image.asset(
                    'assets/images/book6.png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: height * 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Book Hardcover Innovation Work',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    RatingWidget(),
                  ],
                ),
                SizedBox(height: height),
                const Text(
                  'Sean Elis & Morgan Brown',
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF7F8081),
                  ),
                ),
                SizedBox(height: height),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.bookmark_border,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.shopping_cart_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(
                        'assets/images/icon2person.png',
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.download_outlined),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: height * 4),
                const Text(
                  'About this Book',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: height * 1.5),
                const ReadMoreText(
                  maxLines: 3,
                  text:
                      'When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five Lorem Ipsum has been the industry\'s When an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five Lorem Ipsum has been the industry\'s',
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: Stack(
                        children: [
                          const Positioned(
                            left: 0.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                              ),
                              radius: 14,
                            ),
                          ),
                          Positioned(
                            left: 25.0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                                ),
                                radius: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 50.0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1641288883869-c463bc6c2a58?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
                                radius: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 75.0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                ),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1654110455429-cf322b40a906?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80'),
                                radius: 14,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 100.0,
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                                  ),
                                  radius: 14,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 125.0,
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                                  ),
                                  radius: 14,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 150.0,
                            child: Container(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 2,
                                  ),
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 14,
                                  child: Text('99+'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const NumberOfReadsWidget(
                      color: primaryColor,
                      textColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        fixedSize: Size(width * 22, height * 6.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        FontAwesomeIcons.heart,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: width * 68,
                      child: CustomButton(
                          text: 'Start Reading',
                          onPressed: () {},
                          context: context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
