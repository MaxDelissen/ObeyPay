import 'package:flutter/material.dart';
import 'package:obeypay/screens/base_page.dart';
import '../widgets/text_styles.dart';
import '../widgets/profile_card.dart';

class DomProfilePage extends StatelessWidget {
  const DomProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return BasePage(
      imagePath: "assets/images/paypig.png",
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.09),
          Text(
            'Goddess, Alexa',
            style: AppStyles.headingStyle(context),
          ),
          ProfileCard(
            name: 'Uncle Richerson',
            job: 'Senior programmer',
            monthly: '200',
            total: '2700',
            description: 'Lorem ipsum',
            imageUrl: 'assets/images/golddigger.png',
          ),
        ],
      ),
    );
  }
}