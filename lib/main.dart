import 'package:flutter/material.dart';
import 'package:twitter/themes/app_theme.dart';
import 'features/features.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      home: const GetStartedView(),
    );
  }
}
