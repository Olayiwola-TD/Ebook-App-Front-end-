import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: 315,
      height: 80,
      color: Color(0xFF1199B6),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 48,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Omar Faruk',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Colors.white),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'Info@gmail.com',
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
