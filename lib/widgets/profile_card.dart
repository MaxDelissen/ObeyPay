import 'package:flutter/material.dart';
import 'text_styles.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String age;
  final String level;
  final String balance;
  final String weeklyEarnings;
  final String allTimeEarnings;
  final String description;
  final String imageUrl;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.age,
    required this.level,
    required this.balance,
    required this.weeklyEarnings,
    required this.allTimeEarnings,
    required this.description,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.08, 
            left: screenWidth * 0.1, 
            bottom: screenHeight * 0.03,
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  imageUrl,
                  width: screenWidth * 0.35, 
                  height: screenWidth * 0.35, 
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: screenWidth * 0.1), 
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(context, 'Name:', name),
                  _buildInfoRow(context, 'Age:', age),
                  _buildInfoRow(context, 'Level:', level),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.08, bottom: screenHeight * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfoRow(context, 'Available balance:', balance),
              _buildInfoRow(context, 'Money earned this week:', weeklyEarnings),
              _buildInfoRow(context, 'All-time earnings:', allTimeEarnings),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.05, bottom: screenHeight * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Description:', style: AppStyles.labelStyle(context)),
              Text(description, style: AppStyles.labelStyle(context)),
            ],
          ),
        ),
      ],
    );
  }

  // Help to build rows
  Widget _buildInfoRow(BuildContext context, String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.labelStyle(context)),
        const SizedBox(width: 8),
        Text(value, style: AppStyles.textStyle(context)),
      ],
    );
  }
}
