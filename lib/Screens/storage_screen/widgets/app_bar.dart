import 'package:flutter/material.dart';

class StorageAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return AppBar(
      backgroundColor: Colors.grey[50],
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          size: height * 3,
        ),
        onPressed: () {
          // Handle menu button press
        },
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            size: height * 3,
          ),
          onPressed: () {
            // Handle search button press
          },
        ),
      ],
      centerTitle: true,
    );
  }
}
