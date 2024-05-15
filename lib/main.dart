import 'package:flutter/material.dart';
import 'package:tp_login/LoginPage.dart';
import 'package:tp_login/preference_service.dart';
import 'package:tp_login/HomePage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = PreferenceService();
  bool isLoggedIn = await prefs.isUserLoggedIn();
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  MyApp({required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: isLoggedIn ? HomePage() : LoginPage(),

    );
  }
}
