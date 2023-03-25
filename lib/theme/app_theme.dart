


import 'package:flutter/material.dart';

class AppTheme{
  static final light = ThemeData.dark().copyWith(
    backgroundColor: const Color(0xffFFFFFF),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xffFFFFFF),
    ),
    buttonColor: const Color(0xff030303),
    bottomAppBarColor: const Color(0xff030303),
    primaryColor: const Color(0xff030303), /// APP BUTOTON COLOR
    textTheme: const TextTheme(
        headline1: TextStyle(color: Color(0xff17181A)),
        headline2: TextStyle(color: Color(0xffA0AEC0)),
        headline3: TextStyle(color: Color(0xff353535)), /// INTRO  SMALL TEXT
        headline4: TextStyle(color: Color(0xffffffff)),  /// INTRO  SCREEN NEXT TEXT COLOR
        headline5: TextStyle(color: Color(0xff030303)), /// APP LOGO TEXT
        headline6: TextStyle(color: Color(0xff000000)),  /// APPBAR TEXT AND ICCON COLOR
    ),
  );

  static final dark = ThemeData.light().copyWith(
    backgroundColor: const Color(0xff0D1118),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff0D1118)
    ),      buttonColor : Colors.white,
    primaryColor: const Color(0xffD9F0FC), /// APP BUTOTON COLOR
    bottomAppBarColor: const Color(0xffD9F0FC),
    textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white), 
        headline2: TextStyle(color: Color(0xffD9F0FC)),
        headline3: TextStyle(color: Color(0xffA0AEC0)), /// INTRO  SMALL TEXT
        headline4: TextStyle(color: Color(0xff0D1118)), /// INTRO  SCREEN NEXT TEXT COLOR
         headline5: TextStyle(color: Color(0xffFFFFFF)),/// APP LOGO TEXT
        headline6: TextStyle(color: Color(0xffFFFFFF)),  /// APPBAR TEXT AND ICCON COLOR
    ),
  );
}