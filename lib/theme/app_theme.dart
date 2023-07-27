import 'package:flutter/material.dart';

// Custom App Theme
class AppTheme {
  // Color Constants
  static const Color kPrimaryColor = Color(0xFFFF9900);
  static const Color kSecondaryColor = Color(0xFF232F3E);
  static const Color kBackgroundColor = Color(0xFFFFFFFF);
  static const Color kAccentColor = Color(0xFFFF5A5F);

  // Text Styles
  static final TextStyle kHeadingTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontWeight: FontWeight.bold,
    fontSize: 24.0,
    color: kSecondaryColor,
  );

  static final TextStyle kBodyTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 16.0,
    color: kSecondaryColor,
  );

  // Custom App Theme Data
  static ThemeData themeData() {
    return ThemeData(
      primaryColor: kPrimaryColor,
      secondaryHeaderColor: kAccentColor,
      backgroundColor: kBackgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black87,
        iconTheme: IconThemeData(color: Colors.white),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      textTheme: TextTheme(
        headline6: kHeadingTextStyle,
        bodyText2: kBodyTextStyle,
      ),
    );
  }
}
