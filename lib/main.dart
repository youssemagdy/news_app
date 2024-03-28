import 'package:flutter/material.dart';
import 'package:news_apps_2/shared/theme.dart';
import 'package:news_apps_2/ui/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.LightTheme,
      title: 'News',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName :(_) => HomeScreen(),
      },
    );
  }
}