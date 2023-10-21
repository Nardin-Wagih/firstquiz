import 'package:flutter/material.dart';

class ApplicationTheme{
static ThemeData LightTheme = ThemeData(
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(
            size: 30,
            color: Color(0xff027A48),
          ),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xff027A48),
          unselectedIconTheme: IconThemeData(
            size: 30,
            color: Color(0xff667085),
          ),
          unselectedItemColor: Color(0xff667085),
        ),
    );
}