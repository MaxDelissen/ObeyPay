import 'package:flutter/material.dart';
import '../widgets/text_styles.dart';

class ChatCard extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String imageUrl;

  const ChatCard({
    Key? key,
    required this.name,
    required this.lastMessage,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        top: screenHeight * 0.012, 
        left: screenWidth * 0.05, 
        bottom: screenHeight * 0.012,
        right: screenWidth * 0.13,
      ),
      child: Container(
        padding: EdgeInsets.all(screenWidth * 0.03), 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.05), 
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.025), 
              child: Image.asset(
                imageUrl,
                width: screenWidth * 0.15, 
                height: screenWidth * 0.15, 
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: screenWidth * 0.05),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: AppStyles.chatNameStyle(context)),
                Text(lastMessage, style: AppStyles.chatStyle(context)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
