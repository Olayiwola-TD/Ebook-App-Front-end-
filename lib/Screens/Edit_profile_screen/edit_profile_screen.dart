import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

import 'Widgets/text_feild.dart';

class EditProfileScreen extends StatefulWidget {
  static const String routeName = '/edit-profile-screen';
  EditProfileScreen({Key? key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController textEditingController = TextEditingController();
  String username = "Omer Faruq";

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 18,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {
              // Perform some action when the button is pressed
            },
            child: Text(
              'Save',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 4.5),
        child: Column(
          children: [
            SizedBox(
              height: height * 2.5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width,
                ),
                SizedBox(
                  width: height * 18.4,
                  height: height * 18.4,
                  child: Stack(
                    children: [
                      Container(
                        width: height * 15,
                        height: height * 15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: height * 12,
                        left: width * 24,
                        child: Container(
                          height: height * 4.5,
                          width: height * 4.5,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: height * 2.5,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height * 2,
            ),
            MyTextField(
              initialText: 'Omer Faruq',
              labelText: 'Username',
            ),
            SizedBox(
              height: height * 2,
            ),
            MyTextField(
              initialText: 'Omerfaruq@gmail.com',
              labelText: 'Email',
            ),
            SizedBox(
              height: height * 2,
            ),
            MyTextField(
              initialText: '(123) 2345677',
              labelText: 'Phone',
            ),
            SizedBox(
              height: height * 2,
            ),
            MyTextField(
              initialText: 'Male',
              labelText: 'Gender',
            ),
            SizedBox(
              height: height * 2,
            ),
            MyTextField(
              initialText: '11/09/2002',
              labelText: 'Date of birth',
            ),
          ],
        ),
      ),
    );
  }
}
