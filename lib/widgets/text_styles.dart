import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle textStyle(BuildContext context) {
    double scale = MediaQuery.of(context).size.width * 0.05;
    return TextStyle(
      fontSize: scale, // Dynamically scaled font size
      color: Colors.white,
      fontFamily: 'Playfair',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle labelStyle(BuildContext context) {
    double scale = MediaQuery.of(context).size.width * 0.045;
    return TextStyle(
      fontSize: scale,
      color: const Color.fromARGB(205, 255, 255, 255),
      fontFamily: 'Playfair',
    );
  }

  static TextStyle headingStyle(BuildContext context) {
    double scale = MediaQuery.of(context).size.width * 0.1;
    return TextStyle(
      fontSize: scale,
      color: Colors.black,
      fontFamily: 'Playfair',
    );
  }

  static TextStyle chatStyle(BuildContext context) {
    double scale = MediaQuery.of(context).size.width * 0.045;
    return TextStyle(
      fontSize: scale,
      color: const Color.fromARGB(197, 89, 89, 89),
      fontFamily: 'Playfair',
    );
  }

  static TextStyle chatNameStyle(BuildContext context) {
    double scale = MediaQuery.of(context).size.width * 0.05;
    return TextStyle(
      fontSize: scale,
      color: const Color.fromARGB(255, 0, 0, 0),
      fontFamily: 'Playfair',
    );
  }
}
