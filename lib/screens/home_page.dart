import 'package:flutter/material.dart';
import 'package:obeypay/widgets/home_page_widgets/money_slider.dart';
import 'package:obeypay/widgets/home_page_widgets/tinder_card_stack.dart';
import 'package:scrumlab_flutter_tindercard/scrumlab_flutter_tindercard.dart';

import '../utils/demo_users.dart' show DemoUsers;
import '../utils/objects/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 50;
  List<User> users = DemoUsers;
  final CardController controller = CardController();

  List<User> get filteredUsers {
    return users.where((user) {
      if (user.monthlyCap == null) return false;
      // Remove currency symbol and convert to double
      final cap = double.tryParse(user.monthlyCap!.replaceAll(RegExp(r'[^\d.]'), '')) ?? 0;
      return sliderValue >= 800 ? cap >= 750 : cap >= sliderValue;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/swipe.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: TinderCardStack(controller: controller,)
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 400,
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
      ),
    );
  }
}
