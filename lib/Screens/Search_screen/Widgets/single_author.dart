import 'package:flutter/material.dart';

class SingleAuthorCircular extends StatelessWidget {
  final String img;
  final String name;

  const SingleAuthorCircular({Key? key, required this.img, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 2,
      ),
      child: Container(
        height: height * 12,
        child: Column(
          children: [
            Container(
              height: height * 8,
              width: height * 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                ),
                radius: 30,
              ),
            ),
            SizedBox(
              height: height / 2,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class SingleAuthorCircular extends StatelessWidget {
//   final String img;
//   final String name;

//   const SingleAuthorCircular({Key? key, required this.img, required this.name})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width / 100;
//     var height = MediaQuery.of(context).size.height / 100;

//     return Container(
//       height: height * 12,
//       child: ListView(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         children: [
//           Padding(
//             padding: EdgeInsets.all(height),
//             child: Container(
//               height: height * 8,
//               width: height * 8,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: CircleAvatar(
//                 backgroundColor: Colors.grey,
//                 backgroundImage: NetworkImage(
//                   'https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
//                 ),
//                 radius: 30,
//               ),
//             ),
//           ),
//           Text(
//             name,
//             style: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w400,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
