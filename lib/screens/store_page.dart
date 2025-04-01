import 'package:flutter/material.dart';
import 'package:obeypay/screens/base_page.dart';
import '../widgets/cart_widget.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return BasePage(
      imagePath: "assets/images/store.png",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CartCard(currency: '500', cost: "\$5"),
              SizedBox(width: screenWidth * 0.1),
              CartCard(currency: '1000', cost: '\$10'),
            ],
          ),
          SizedBox(height: screenHeight * 0.06),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CartCard(currency: '500', cost: "\$5"),
              SizedBox(width: screenWidth * 0.1),
              CartCard(currency: '1000', cost: '\$10'),
            ],
          ),
        ],
      ),
    );
  }
}