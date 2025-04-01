import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final List<NavBarButton> buttons;
  final Color backgroundColor; // Added background color as a parameter

  const NavBar({
    Key? key,
    required this.buttons,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.64,
      padding: EdgeInsets.only(top: screenWidth * 0.017, bottom: screenWidth * 0.017, left: screenWidth * 0.015),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(screenWidth * 0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buttons
            .map(
              (button) => Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.015),
            child: _buildButton(context, button),
          ),
        )
            .toList(),
      ),
    );
  }

  Widget _buildButton(BuildContext context, NavBarButton button) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: screenWidth * 0.14,
      height: screenWidth * 0.14,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(screenWidth * 0.1),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          color: button.color,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.all(20),
            ),
            onPressed: button.onPressed,
            child: Image.asset(button.icon, width: screenWidth * 0.07),
          ),
        ),
      ),
    );
  }
}

class NavBarButton {
  final String icon;
  final Color color;
  final VoidCallback onPressed;

  NavBarButton({
    required this.icon,
    required this.color,
    required this.onPressed,
  });
}