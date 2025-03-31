import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:obeypay/screens/shop_page.dart';
import 'package:obeypay/screens/chats_page.dart';
import 'package:obeypay/screens/dom_profile_page.dart';
import 'package:obeypay/screens/home_page.dart';
import 'package:obeypay/screens/store_page.dart';
import 'package:obeypay/utils/notificationService.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  NotificationService().initNotification();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Playfair',
        primaryColor: Colors.blue,
        secondaryHeaderColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        // Other default theme properties if we want.
      ),
      home: const HomePage(),
    );
  }
}
