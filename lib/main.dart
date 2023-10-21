import 'package:firstquiz/HomeLayout.dart';
import 'package:flutter/material.dart';

import 'core/Theme/ApplicationTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz',
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.LightTheme,
      home: HomeLayout(),
    );
  }
}


