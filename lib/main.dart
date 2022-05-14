import 'package:crypto_app/view/onboarding_screen/welcome_page.dart';
import 'package:crypto_app/viewmodel/theme/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme(),
    );
  }
}
