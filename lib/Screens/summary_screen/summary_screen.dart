import 'package:e_book/Common/Widgets/read_more_text.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SummaryScreen extends StatelessWidget {
  static const String routeName = '/summay-snreen';
  const SummaryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;
    String summary =
        'School Ipsum has been the industry\'s standard dummy text ever since the 1500s a type specimen book. It has survived not only fivewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five  Lorem Ipsum has been the industry\'s standard dummy text ever since the ';
    String biography =
        'School Ipsum has been the industry\'s standard dummy text ever since the 1500s a type specimen book. It has survived not only fivewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five  Lorem Ipsum has been the industry\'s standard dummy text ever since the School Ipsum has been the industry\'s standard dummy text ever since the 1500s a type specimen book. It has survived not only fivewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five  Lorem Ipsum has been the industry\'s standard dummy text ever since the School Ipsum has been the industry\'s standard dummy text ever since the 1500s a type specimen book. It has survived not only fivewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five  Lorem Ipsum has been the industry\'s standard dummy text ever since the School Ipsum has been the industry\'s standard dummy text ever since the 1500s a type specimen book. It has survived not only fivewhen an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five  Lorem Ipsum has been the industry\'s standard dummy text ever since the';
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * 36,
                child: Stack(
                  children: [
                    Container(
                      height: height * 25,
                      color: primaryColor,
                    ),
                    Positioned(
                      top: height * 7,
                      left: width * 9,
                      child: Image(
                        image: AssetImage('assets/images/book6.png'),
                        height: height * 25,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Positioned(
                      top: height * 8,
                      left: width * 53,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pages',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: height * 1,
                          ),
                          Text(
                            '223 (1h 10 m)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: height * 2,
                          ),
                          Text(
                            'Price',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: height,
                          ),
                          Text(
                            '\$25',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'The Advancers of Holmes',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: height,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: Colors.black54,
                          size: 20,
                        ),
                        Text(
                          '253',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: height * 3,
                    ),
                    Text(
                      'Summary',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: height * 2,
                    ),
                    Text(
                      summary,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: height * 3,
                    ),
                    Text(
                      'Biography',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: height * 2,
                    ),
                    ReadMoreText(
                      fontsize: 16,
                      text: biography,
                      maxLines: 10,
                    ),
                    SizedBox(
                      height: height * 2,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
