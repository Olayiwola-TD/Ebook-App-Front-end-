import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: width * 85,
        height: width * 85,
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Color(0xFF4FC678),
              radius: width * 11,
              child: Icon(
                Icons.check,
                size: width * 11,
                color: Colors.white,
              ),
            ),
            SizedBox(height: width * 6),
            Text(
              'Payment successful',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: width * 3,
            ),
            Text(
              'Your payment has been received.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF908F82),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: width * 5,
            ),
            CustomButton(
                text: 'Done',
                onPressed: () {
                  Navigator.pop(context);
                },
                context: context)
          ],
        ),
      ),
    );
  }
}
