import 'package:flutter/material.dart';
import 'package:obeypay/utils/notificationService.dart';
import 'package:obeypay/widgets/user_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    String accountType =
        'dom'; // This should be dynamically set based on the user

    Color accentColor;
    if (accountType == 'dom') {
      accentColor = Colors.amber; //Placeholder
    } else {
      accentColor = Colors.green; //Placeholder
    }

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: UserCard(name: "Katerina Petrova", description: "Wow, Im so great!", imageUrl: "https://latexmagicbest.com/wp-content/uploads/2023/06/xy-dominant-woman-in-latex-catsuit-c.webp", isCertified: true),
        ),
      ),
    );
  }
}
