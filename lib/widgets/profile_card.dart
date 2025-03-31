import 'package:flutter/material.dart';
import 'text_styles.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String job;
  final String monthly;
  final String total;
  final String description;
  final String imageUrl;

  const ProfileCard({
    Key? key,
    required this.name,
    required this.job,
    required this.monthly,
    required this.total,
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
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imageUrl,
                  width: screenWidth * 0.35,
                  height: screenWidth * 0.35,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(name, style: AppStyles.nameStyle(context)),
                   Text(job, style: AppStyles.jobStyle(context)),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.08,
            bottom: screenHeight * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Monthly cap: 💸 $monthly', style: AppStyles.textStyle(context)),
              Text('Total spent: 🤑 $total', style: AppStyles.textStyle(context)),
            ],
          ),
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('About me:', style: AppStyles.textStyle(context)),
              Text(description, style: AppStyles.textStyle(context)),
            ],
          ),
      ],
    );
  }
}
