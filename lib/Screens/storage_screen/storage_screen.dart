import 'package:e_book/Screens/storage_screen/widgets/app_bar.dart';
import 'package:e_book/Screens/storage_screen/widgets/single_storage_box.dart';
import 'package:e_book/Screens/storage_screen/widgets/storage_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StorageScreen extends StatelessWidget {
  static const String routeName = '/storage-screen';

  const StorageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    List<String> images = [
      'assets/images/stg1.png',
      'assets/images/stg2.png',
      'assets/images/stg3.png',
      'assets/images/stg4.png',
      'assets/images/stg5.png',
      'assets/images/stg6.png',
    ];

    return Scaffold(
      appBar: StorageAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 4),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StorageContainer(percentage: 57),
              Container(
                height: 1,
                color: Colors.black12,
              ),
              SizedBox(
                height: height * 2.3,
              ),
              SizedBox(
                height: height * 65,
                child: GridView.count(
                  mainAxisSpacing: width * 5,
                  crossAxisSpacing: width * 5,
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  children: [
                    SingleStorageBox(
                      img: images[0],
                      txt1: 'Passwords',
                      txt2: '59 Items',
                    ),
                    SingleStorageBox(
                      img: images[1],
                      txt1: 'Downloads',
                      txt2: '5 Items',
                    ),
                    SingleStorageBox(
                      img: images[2],
                      txt1: 'Videos',
                      txt2: '2 Items',
                    ),
                    SingleStorageBox(
                      img: images[3],
                      txt1: 'Music',
                      txt2: '65 Items',
                    ),
                    SingleStorageBox(
                      img: images[4],
                      txt1: 'Documents',
                      txt2: '53 Items',
                    ),
                    SingleStorageBox(
                      img: images[5],
                      txt1: 'Images',
                      txt2: '10 Items',
                    ),
                  ],
                ),
                // child: GridView.builder(
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: width * 5,
                //     mainAxisSpacing: width * 5,
                //     childAspectRatio: 1.2,
                //   ),
                //   itemCount: 7,
                //   itemBuilder: (context, index) => SizedBox(
                //     height: height * 30,
                //     child: SingleStorageBox(
                //       img: 'img',
                //       txt1: 'txt1',
                //       txt2: 'txt2',
                //     ),
                //   ),
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
