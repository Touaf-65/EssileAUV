import 'package:essile/features/authentication/screens/onboarding/onboarding.dart';
import 'package:essile/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EssileApp extends StatelessWidget {
  const EssileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '',
      theme: EssileTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: EssileTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
