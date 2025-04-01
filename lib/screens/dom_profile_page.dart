import 'package:flutter/material.dart';
import 'package:obeypay/screens/base_page.dart';
import 'package:obeypay/widgets/profile_card_royal.dart';

class DomProfilePage extends StatelessWidget {
  const DomProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return BasePage(
      parentIndex: 1,
      imagePath: "assets/images/royal.png",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.09, width: screenWidth),
          ProfileCardRoyal(
            name: 'Adriana Katerson',
            age: '25',
            monthly: '200',
            willing: 'send pictures',
            description: 'Living life in the fast lane and always aiming for the finer things. Champagne, designer bags, and first-class flights are the standard. I know what I want, luxury isn’t just a lifestyle, it’s a necessity.',
            imageUrl: 'assets/images/golddigger.png',
          ),
        ],
      ),
    );
  }
}