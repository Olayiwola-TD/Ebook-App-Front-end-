import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Screens/payment_screen/widgets/Dialogs/payment_successfull.dart';
import 'package:e_book/Screens/payment_screen/widgets/Dialogs/transfer_fail.dart';
import 'package:e_book/Screens/payment_screen/widgets/saved_cards.dart';
import 'package:e_book/utils/colors.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  static const String routeName = 'payment-screen';
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
          'Checkout',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Payment method',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: height,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: width * 30,
                height: height * 10,
                child: Image.asset('assets/images/paypal_logo.png'),
              ),
              SizedBox(
                height: height * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Saved cards',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: width * 30,
                    height: height * 5.5,
                    child: CustomButton(
                      text: '+  Add card',
                      onPressed: () {},
                      context: context,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height,
              ),
              SizedBox(
                height: height * 40,
                child: ListView.builder(
                  itemBuilder: (context, index) => SavedCard(),
                  itemCount: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\$54.00",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 2,
              ),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => PaymentSuccessDialog(),
                  );
                },
                context: context,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
