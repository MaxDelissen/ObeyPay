import 'package:flutter/material.dart';
import 'text_styles.dart';

class ProfileCardRoyal extends StatelessWidget {
  final String name;
  final String age;
  final String monthly;
  final String willing;
  final String description;
  final String imageUrl;

  const ProfileCardRoyal({
    Key? key,
    required this.name,
    required this.age,
    required this.monthly,
    required this.willing,
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
            top: screenHeight * 0.16,
            bottom: screenHeight * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   Text(name, style: AppStyles.nameStyle(context)),
                   Text('Age: $age', style: AppStyles.jobStyle(context)),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Monthly min: $monthly', style: AppStyles.textStyle(context)),
              Text('Willing to: $willing', style: AppStyles.textStyle(context)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.09, right: screenWidth * 0.09),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('About me:', style: AppStyles.textStyle(context)),
                Text(description, style: AppStyles.aboutStyle(context)),
              ],
            ),
        ),
      ],
    );
  }
}
