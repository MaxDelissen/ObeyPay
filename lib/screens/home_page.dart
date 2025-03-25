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
      appBar: AppBar(title: const Text('Epic Flutter App')),
      body: Center(
        child: UserCard(name: "Katerina Petrova", description: "Wow, Im so great!", imageUrl: "https://dummyimage.com/500x800/f200f2", isCertified: true),
      ),
    );
  }
}
