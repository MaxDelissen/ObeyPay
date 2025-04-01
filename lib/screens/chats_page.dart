import 'package:flutter/material.dart';
import 'package:obeypay/screens/base_page.dart';
import '../widgets/chat_widget.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return BasePage(
      parentIndex: 2,
      imagePath: "assets/images/matches.png",
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
    );
  }
}