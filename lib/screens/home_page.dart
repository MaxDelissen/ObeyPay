import 'package:flutter/material.dart';
import 'package:obeypay/screens/base_page.dart';
import 'package:obeypay/widgets/home_page_widgets/money_slider.dart';
import 'package:obeypay/widgets/home_page_widgets/tinder_card_stack.dart';

import '../utils/demo_users.dart' show DemoUsers;
import '../utils/objects/user.dart';
import '../widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 50;
  List<User> users = DemoUsers;

  List<User> get filteredUsers {
    return users.where((user) {
      if (user.monthlyCap == null) return false;
      // Remove currency symbol and convert to double
      final cap =
          double.tryParse(user.monthlyCap!.replaceAll(RegExp(r'[^\d.]'), '')) ??
              0;
      return sliderValue >= 800 ? cap >= 750 : cap >= sliderValue;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return BasePage(
      imagePath: 'assets/images/swipe.png',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.04), // 4% of screen width
              child: TinderCardStack(users: filteredUsers),
            ),
          ),
          SizedBox(height: screenHeight * 0.03), // 3% of screen height
          SizedBox(
            width: screenWidth * 0.85, // 85% of screen width
            child: MoneySlider(
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
