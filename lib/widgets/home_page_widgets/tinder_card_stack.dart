import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../utils/objects/user.dart';
import 'user_card.dart';

class TinderCardStack extends StatefulWidget {
  final List<User> users;

  const TinderCardStack({
    super.key,
    required this.users,
  });

  @override
  State<TinderCardStack> createState() => _TinderCardStackState();
}

class _TinderCardStackState extends State<TinderCardStack> {
  final List<AudioPlayer> _audioPlayers = [];
  
  @override
  void dispose() {
    for (final player in _audioPlayers) {
      player.dispose();
    }
    super.dispose();
  }

  Future<void> _playSwipeRight() async {
    _playSound('sounds/cash-register.mp3');
  }

  Future<void> _playSwipeLeft() async {
    _playSound('sounds/swipe-left.mp3');
  }

  Future<void> _playSound(String soundPath) async {
    final player = AudioPlayer();
    _audioPlayers.add(player);
    await player.play(AssetSource(soundPath));
    player.onPlayerComplete.listen((_) {
      player.dispose();
      _audioPlayers.remove(player);
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<UserCard> cards = widget.users.map((user) => UserCard(
      user: user,
    )).toList();

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
        onSwipe: (previousIndex, currentIndex, direction) {
          if (direction == CardSwiperDirection.right) {
            _playSwipeRight();
          }
          else if (direction == CardSwiperDirection.left) {
            _playSwipeLeft();
          }
          return true;
        },
        scale: 0.6,
        numberOfCardsDisplayed: cardsToDisplay,
      ),
    );
  }
}