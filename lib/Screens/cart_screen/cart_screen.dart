import 'package:e_book/Common/Widgets/custom_button.dart';
import 'package:e_book/Common/Widgets/custom_textinputfeild.dart';
import 'package:e_book/Screens/cart_screen/widgets/cart_books.dart';
import 'package:e_book/Screens/payment_screen/payment_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/cart-screen';

  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 100;
    var height = MediaQuery.of(context).size.height / 100;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Cart",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: height * 55,
                child: ListView.builder(
                  padding: EdgeInsets.only(top: height * 2),
                  itemBuilder: (context, index) => const CartBook(),
                  itemCount: 3,
                ),
              ),
              SizedBox(height: height * 4),
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
              SizedBox(height: height),
              Text(
                "Enter the name of the promoter/school who referred you (optional):",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF717171),
                ),
              ),
              SizedBox(height: height * 2),
              TextInputField(
                hintText: '   Enter the name of the promoter/school',
                context: context,
              ),
              SizedBox(
                height: height * 2,
              ),
              CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.pushNamed(context, PaymentScreen.routeName);
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
