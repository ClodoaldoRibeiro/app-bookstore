import 'package:flutter/material.dart';

import 'features/onboarding/presenter/screens/onboarding_screen.dart';

class BookstoreApp extends StatelessWidget {
  const BookstoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookstore',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const OnboardingScreen(),
    );
  }
}
