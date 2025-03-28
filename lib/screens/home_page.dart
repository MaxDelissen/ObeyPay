import 'package:flutter/material.dart';
import 'package:obeypay/widgets/home_page_widgets/money_slider.dart';
import 'package:scrumlab_flutter_tindercard/scrumlab_flutter_tindercard.dart';

import '../utils/demo_users.dart' show DemoUsers;
import '../widgets/home_page_widgets/user_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 50;
  final CardController controller = CardController();

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
                child: SizedBox(
                  width: 345,
                  height: 480,
                  child: DemoUsers.isNotEmpty
                      ? TinderSwapCard(
                    swipeUp: true,
                    swipeDown: true,
                    maxWidth: MediaQuery.of(context).size.width * 1.2,
                    maxHeight: MediaQuery.of(context).size.width * 1.2,
                    minWidth: MediaQuery.of(context).size.width,
                    minHeight: MediaQuery.of(context).size.width,
                    orientation: AmassOrientation.left,
                    totalNum: DemoUsers.length,
                    stackNum: 2,
                    swipeEdge: 4,
                    cardBuilder: (context, index) => UserCard(user: DemoUsers[index]),
                    cardController: controller,
                    swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
                      if (align.x < 0) {
                        print("Swiping Left");
                      } else if (align.x > 0) {
                        print("Swiping Right");
                      }
                    },
                    swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
                      print("Card \$index swiped \$orientation");
                    },
                  )
                      : const Center(child: Text("No users available")),
                ),
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
