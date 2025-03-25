import 'package:flutter/material.dart';

class DomProfilePage extends StatelessWidget {
  const DomProfilePage({super.key});

  @override
  build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              // Background image
              decoration: BoxDecoration(
                image: DecorationImage(
                  // Background image
                  image: AssetImage("assets/images/dom_profile.png"),
                  fit: BoxFit.cover,
                
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
