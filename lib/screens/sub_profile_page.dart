import 'package:flutter/material.dart';
import 'package:obeypay/screens/base_page.dart';
import 'package:obeypay/widgets/profile_card_pig.dart';

class SubProfilePage extends StatelessWidget {
  const SubProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return BasePage(
      parentIndex: 1,
      imagePath: "assets/images/paypig.png",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.09, width: screenWidth),
          ProfileCardPig(
            name: 'Tom Carson',
            age: '72',
            monthly: '300',
            total: '3700',
            description: 'Living life in the fast lane and always aiming for the finer things. Champagne, designer bags, and first-class flights? That’s the standard. I know what I want, and I have no problem getting it—because luxury isn’t just a lifestyle, it’s a necessity.',
            imageUrl: 'assets/images/sub_image.png',
          ),
        ],
      ),
    );
  }
}