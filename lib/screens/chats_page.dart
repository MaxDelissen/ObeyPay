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
            lastMessage: 'Let me know',
            imageUrl: 'assets/images/sub3.png',
          ),
          ChatCard(
            name: 'Tomson',
            lastMessage: 'ok bby I sent 2000',
            imageUrl: 'assets/images/sub1.png',
          ),
        ],
      ),
    );
  }
}