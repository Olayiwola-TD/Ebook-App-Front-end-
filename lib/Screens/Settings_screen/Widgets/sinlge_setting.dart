import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SingleSetting extends StatelessWidget {
  final Function() ontap;
  final IconData icon;
  final String text;
  const SingleSetting(
      {super.key, required this.icon, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 1,
            color: Colors.black12,
          ),
          SizedBox(
            height: height * 2,
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(53, 184, 212, 0.14),
                    borderRadius: BorderRadius.circular(8)),
                height: height * 5,
                width: height * 5,
                child: Icon(
                  icon,
                  color: Color.fromRGBO(53, 184, 212, 1),
                ),
              ),
              SizedBox(
                width: width * 4,
              ),
              SizedBox(
                width: width * 62,
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: height * 2.2,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 2,
          ),
        ],
      ),
    );
  }
}
