import 'package:flutter/material.dart';
import 'package:obeypay/widgets/nav_bar.dart';
import '../widgets/cart_widget.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: screenWidth,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/store.png"),
            fit: BoxFit.cover,
          ),
        ),
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
            // maybe we shoul add current amount and total bought? 
          ],
        ),
      ),
      floatingActionButton: NavBar(
        buttons: [
          NavBarButton(
            icon: 'assets/images/home_gray.png',
            color: Color(0xFF443E3E),
            onPressed: () {},
          ),
          NavBarButton(
            icon: 'assets/images/profile_gray.png',
            color: Color(0xFF443E3E),
            onPressed: () {},
          ),
          NavBarButton(
            icon: 'assets/images/chats_black.png',
            color: Color(0xFFEF45B1),
            onPressed: () {},
          ),
          NavBarButton(
            icon: 'assets/images/cart_gray.png',
            color: Color(0xFF443E3E),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
