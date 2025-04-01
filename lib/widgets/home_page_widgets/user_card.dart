import 'package:flutter/material.dart';
import 'package:obeypay/widgets/home_page_widgets/certified_badge.dart';
import '../../utils/objects/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 378,
      height: 380,
      child: Card(
        color: const Color(0xFF180712),
        margin: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 158,
              height: 184,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  image: NetworkImage(user.profilePictureUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 1.0),
            Text(
              user.name!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              user.jobTitle!,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 10.0),
            if (user.isCertified!) CertifiedBadge(isSub: user.isSub!),
            const SizedBox(height: 25.0),
            Text.rich(
              TextSpan(
                text: 'Monthly Cap: ',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: user.monthlyCap!,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEF45B1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4.0),
            Text.rich(
              TextSpan(
                text: 'Total Spent: ',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: user.totalSpent!,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFEF45B1),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
