import 'package:flutter/material.dart';

import '../utils/objects/user.dart';
import '../widgets/user_card.dart';

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

    User user = User(
      name: "Katerina Petrova",
      description:
          "According to all known laws of aviation, there is no way a bee should be able to fly.",
      profilePictureUrl:
          "https://latexmagicbest.com/wp-content/uploads/2023/06/xy-dominant-woman-in-latex-catsuit-c.webp",
      isSub: false,
      isCertified: true,
      age: 25,
      email: "test@test.com",
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/dom_home.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: SizedBox(
                width: 345,
                height: 570,
                child: UserCard(user: user),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
