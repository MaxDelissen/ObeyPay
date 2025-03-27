import 'package:flutter/material.dart';

import '../utils/objects/user.dart';
import '../widgets/user_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double _sliderValue = 50;

    User user = User(
      name: "Methew Johnsons",
      jobTitle: "Senior programmer",
      profilePictureUrl:
          "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQyrsm9OOijHoa55nD2b4lMqQL6WmHpzCHSbxksFxUa9yFhKPy_",
      isSub: false,
      isCertified: true,
      age: 25,
      email: "test@test.com",
      monthlyCap: "200",
      totalSpent: "2k",
    );

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/swipe.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 345,
                  height: 480,
                  child: UserCard(user: user),
                ),
                SizedBox(
                  width: 345,
                  child: SliderTheme(
                    data: SliderThemeData(
                      activeTrackColor: const Color(0xFFEF45B1),
                      thumbColor: const Color(0xFFEF45B1),
                      overlayColor: const Color(0xFFEF45B1).withOpacity(0.2),
                      inactiveTrackColor: Colors.white.withOpacity(0.3),
                    ),
                    child: Slider(
                      value: _sliderValue,
                      min: 0,
                      max: 100,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}