import 'package:flutter/material.dart';
import 'package:obeypay/widgets/nav_bar.dart';
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
                  image: AssetImage("assets/images/profile.png"),
                  fit: BoxFit.cover,
                ),
              ),
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
                  NavBar(buttons: [
                      NavBarButton(
                        icon: 'assets/images/home_gray.png',
                        color: Color(0xFFE3E2E2),
                        onPressed: () {},
                      ),
                      NavBarButton(
                        icon: 'assets/images/profile_black.png',
                        color: Color(0xFFEF45B1),
                        onPressed: () {},
                      ),
                      NavBarButton(
                        icon: 'assets/images/chats_gray.png',
                        color: Color(0xFFE3E2E2),
                        onPressed: () {},
                      ),
                      NavBarButton(
                        icon: 'assets/images/cart_gray.png',
                        color: Color(0xFFE3E2E2),
                        onPressed: () {},
                      ),
                    ],
                    backgroundColor: Colors.white,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
