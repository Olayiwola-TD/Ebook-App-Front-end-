import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Common/Widgets/side_menu_bar/side_menu_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CollectionsScreen extends StatelessWidget {
  static const routeName = '/collections-screen';
  const CollectionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black87,
          icon: const Icon(
            Icons.menu_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => SideMenuBar(),
            );
          },
        ),
        title: Text(
          "Collections",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: height,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(double.infinity, height * 6),
              backgroundColor: Color(0xFF1199B6),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.database,
                  color: Colors.white,
                ),
                SizedBox(
                  width: width * 2,
                ),
                Text(
                  'Book Collections Today',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )
              ],
            ),
          ),
          SizedBox(
            height: height * 2,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(double.infinity, height * 7),
              backgroundColor: Color(0xFF1199B6),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle_outline_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: width * 2,
                ),
                Text(
                  'Add Collection',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
