import 'package:flutter/material.dart';
import 'package:test_app/src/features/share_profile/view/share%20_profile_ascreen.dart';
import 'package:test_app/src/res/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gate Test',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const ShareProfileScreen(),
    );
  }
}

