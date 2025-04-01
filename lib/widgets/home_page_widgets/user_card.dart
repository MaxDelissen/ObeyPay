import 'package:flutter/material.dart';
import 'package:obeypay/widgets/home_page_widgets/certified_badge.dart';
import '../../utils/objects/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Card(
      color: const Color(0xFF180712),
      margin: EdgeInsets.all(screenWidth * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildInfoRow('Monthly Cap: ', user.monthlyCap!, screenWidth),
          _dynamicSpacer(screenHeight, 0.01),
          _buildInfoRow('Total Spent: ', user.totalSpent!, screenWidth),
          _dynamicSpacer(screenHeight, 0.03),
          _buildInfoRow('Age: ', user.age!.toString(), screenWidth),
          _dynamicSpacer(screenHeight, 0.05),
          Text(
            user.name!,
            style: TextStyle(
              fontSize: screenWidth * 0.06,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Text(
            user.jobTitle!,
            style: TextStyle(
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w600,
              color: Colors.white70,
            ),
          ),
          _dynamicSpacer(screenHeight, 0.015),
          if (user.isCertified!) CertifiedBadge(isSub: user.isSub!),
        ],
      ),
    );
  }

  Widget _dynamicSpacer(double screenHeight, double multiplier) {
    return SizedBox(height: screenHeight * multiplier);
  }

  Widget _buildInfoRow(String label, String value, double screenWidth) {
    return Text.rich(
      TextSpan(
        text: label,
        style: TextStyle(
          fontSize: screenWidth * 0.07,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        children: [
          TextSpan(
            text: value,
            style: TextStyle(
              fontSize: screenWidth * 0.07,
              fontWeight: FontWeight.w600,
              color: const Color(0xFFEF45B1),
            ),
          ),
        ],
      ),
    );
  }
}