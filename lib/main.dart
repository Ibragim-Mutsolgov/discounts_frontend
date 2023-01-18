import 'package:DiscountsApp/exit/exit.dart';
import 'package:DiscountsApp/exit/registration.dart';
import 'package:DiscountsApp/settings/settings.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const StartApplication());
}

class StartApplication extends StatelessWidget {
  const StartApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiscountsApp',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      routes: {
        "/home": (BuildContext c) => const HomePage(),
        "/settings": (BuildContext c) => const SettingsPage(),
        "/exit": (BuildContext c) => const ExitPage(),
        "/registration": (BuildContext c) => const RegistrationPage()
      },
    );
  }
}