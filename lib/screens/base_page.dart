import 'package:flutter/material.dart';
import 'package:obeypay/screens/home_page.dart';
import 'package:obeypay/screens/dom_profile_page.dart';
import 'package:obeypay/screens/chats_page.dart';
import 'package:obeypay/screens/store_page.dart';
import 'package:obeypay/widgets/nav_bar.dart';

class BasePage extends StatefulWidget {
  final Widget child;
  final String imagePath;

  const BasePage({Key? key, required this.child, required this.imagePath}) : super(key: key);

  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    DomProfilePage(),
    ChatsPage(),
    StorePage(),
  ];

  void onNavBarItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pages[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    final icons = {
      'home': ['assets/images/home_gray.png', 'assets/images/home_black.png'],
      'profile': [
        'assets/images/profile_gray.png',
        'assets/images/profile_black.png',
      ],
      'chats': [
        'assets/images/chats_gray.png',
        'assets/images/chats_black.png',
      ],
      'cart': ['assets/images/cart_gray.png', 'assets/images/cart_black.png'],
    };

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(child: widget.child),
            NavBar(
              buttons: List.generate(icons.length, (index) {
                final key = icons.keys.elementAt(index);
                return NavBarButton(
                  icon: icons[key]![selectedIndex == index ? 1 : 0],
                  color:
                  selectedIndex == index
                      ? Color(0xFFEF45B1)
                      : Color(0xFF443E3E),
                  onPressed: () => onNavBarItemTapped(index),
                );
              }),
              backgroundColor: Color(0xFF160202),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}