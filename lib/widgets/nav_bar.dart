import 'package:flutter/material.dart';
import '../widgets/text_styles.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
        padding: EdgeInsets.all(screenWidth * 0.02), 
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.1), 
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.1), 
              child: Image.asset(
                'assets/images/dom_profile.png',
                width: screenWidth * 0.14, 
                height: screenWidth * 0.14, 
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: screenWidth * 0.01),
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.1), 
              child: Image.asset(
                'assets/images/dom_profile.png',
                width: screenWidth * 0.14, 
                height: screenWidth * 0.14, 
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: screenWidth * 0.01),
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.1), 
              child: Image.asset(
                'assets/images/dom_profile.png',
                width: screenWidth * 0.14, 
                height: screenWidth * 0.14, 
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: screenWidth * 0.01),
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.1), 
              child: Image.asset(
                'assets/images/dom_profile.png',
                width: screenWidth * 0.14, 
                height: screenWidth * 0.14, 
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
     
    );
  }
}
