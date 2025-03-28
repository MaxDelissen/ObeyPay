import 'package:flutter/material.dart';
import 'package:obeypay/widgets/nav_bar.dart';
import '../widgets/text_styles.dart';
import '../widgets/chat_widget.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/matches.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.22),
                  ChatCard(
                    name: 'Alexa',
                    lastMessage: 'idk pig, pay and see',
                    imageUrl: 'assets/images/golddigger.png',
                  ),
                  ChatCard(
                    name: 'Alexa',
                    lastMessage: 'idk pig, pay and see',
                    imageUrl: 'assets/images/golddigger.png',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton:
      NavBar(
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
    floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }
}
