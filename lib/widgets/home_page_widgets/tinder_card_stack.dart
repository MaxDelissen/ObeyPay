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
        numberOfCardsDisplayed: 2,
      ),
    );
  }
}