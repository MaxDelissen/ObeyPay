import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import '../../utils/objects/user.dart';
import 'user_card.dart';

class TinderCardStack extends StatelessWidget {
  final List<User> users;

  const TinderCardStack({
    super.key,
    required this.users,
  });

  @override
  Widget build(BuildContext context) {
    final List<UserCard> cards = users.map((user) => UserCard(
      user: user,
    )).toList();

    /*if (cards.isEmpty) {
      User user = User(
        name: 'No Matches',
        jobTitle: 'No Matches',
        monthlyCap: '0',
        totalSpent: '0',
        age: 0,
        isCertified: false,
        isSub: false,
      );
      cards.add(UserCard(
        user: user,
      ));
    }*/

    final int cardsToDisplay = cards.length > 1 ? 2 : 1;

    return SizedBox(
      width: 345,
      height: 480,
      child: CardSwiper(
        cardsCount: cards.length,
        cardBuilder: (context, index, percentThresholdX, percentThresholdY) => cards[index],
        allowedSwipeDirection: AllowedSwipeDirection.only(
          right: true,
          left: true,
        ),
        scale: 0.6,
        numberOfCardsDisplayed: cardsToDisplay,
      ),
    );
  }
}