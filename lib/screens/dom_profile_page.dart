import 'package:flutter/material.dart';
import '../widgets/text_styles.dart';
import '../widgets/profile_card.dart';

class DomProfilePage extends StatelessWidget {
  const DomProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/dom_profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.12), 
                  Text(
                    'Goddess, Alexa',
                    style: AppStyles.headingStyle(context),
                  ),
                  ProfileCard(
                    name: 'Alexa',
                    age: '27',
                    level: '7',
                    balance: '200',
                    weeklyEarnings: '2700',
                    allTimeEarnings: '14000',
                    description: 'Lorem ipsum',
                    imageUrl: 'assets/images/golddigger.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
