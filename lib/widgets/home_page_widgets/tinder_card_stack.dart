import 'package:flutter/material.dart';
import 'package:scrumlab_flutter_tindercard/scrumlab_flutter_tindercard.dart';
import '../../utils/demo_users.dart';
import 'user_card.dart';

class TinderCardStack extends StatelessWidget {
  final CardController controller;

  const TinderCardStack({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
              swipeUpdateCallback: (details, align) {
              },
              swipeCompleteCallback: (orientation, index) {
                print("Card $index swiped $orientation");
              },
            )
          : const Center(child: Text("No users available")),
    );
  }
}