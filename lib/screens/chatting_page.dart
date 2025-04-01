import 'package:flutter/material.dart';
import 'package:obeypay/widgets/nav_bar.dart';
import '../widgets/text_styles.dart';
import '../widgets/chat_widget.dart';

class ChattingPage extends StatelessWidget {
  const ChattingPage({super.key});

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
                  image: AssetImage("assets/images/chatting.png"),
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
    );
  }
}
