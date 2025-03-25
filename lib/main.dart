import 'package:flutter/material.dart';
import 'package:obeypay/screens/home_page.dart';
import 'package:obeypay/utils/notificationService.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  NotificationService().initNotification();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        secondaryHeaderColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        // Other default theme properties if we want.
      ),
      home: const HomePage(),
    );
  }
}
