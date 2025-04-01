import 'package:flutter/material.dart';
import 'package:obeypay/widgets/home_page_widgets/certified_badge.dart';
import '../../utils/objects/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth * 1, // 90% of screen width
      height: screenHeight * 1, // 50% of screen height
      child: Card(
        color: const Color(0xFF180712),
        margin: EdgeInsets.all(screenWidth * 0.02), // 2% of screen width
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: screenWidth * 0.4, // 40% of screen width
              height: screenHeight * 0.23, // 23% of screen height
              child: ClipRRect(
                borderRadius: BorderRadius.circular(screenWidth * 0.08),
                child: Image(
                  image: NetworkImage(user.profilePictureUrl!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.005), // Small gap
            Text(
              user.name!,
              style: TextStyle(
                fontSize: screenWidth * 0.06, // Scaled font size
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              user.jobTitle!,
              style: TextStyle(
                fontSize: screenWidth * 0.04, // Scaled font size
                fontWeight: FontWeight.w600,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: screenHeight * 0.015), // 1.5% of screen height
            if (user.isCertified!) CertifiedBadge(isSub: user.isSub!),
            SizedBox(height: screenHeight * 0.015), // 3% of screen height
            Text.rich(
              TextSpan(
                text: 'Monthly Cap: 💰 ',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: user.monthlyCap!,
                    style: TextStyle(
                      fontSize: screenWidth * 0.07, // Slightly bigger
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFEF45B1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.005),
            Text.rich(
              TextSpan(
                text: 'Total Spent: 🤑 ',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                children: [
                  TextSpan(
                    text: user.totalSpent!,
                    style: TextStyle(
                      fontSize: screenWidth * 0.07,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFFEF45B1),
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
