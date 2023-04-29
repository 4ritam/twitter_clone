import 'package:flutter/material.dart';
import 'package:twitter/routes/app_config.dart';
import 'package:twitter/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Twitter',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppConfig.router(false).routeInformationParser,
      routerDelegate: AppConfig.router(false).routerDelegate,
    );
  }
}
