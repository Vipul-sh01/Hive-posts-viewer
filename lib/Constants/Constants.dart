import 'package:flutter/material.dart';

class AppConstants {
  // Colors
  static const Color primaryColor = Color(0xFF0A0E21);
  static const Color secondColor = Colors.redAccent;
  static const Color textColor = Colors.grey;
  static const Color statsColor = Colors.green;
  static const Color avatarPlaceholderColor = Colors.grey;

  // Text Styles
  static const TextStyle authorTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle communityTextStyle = TextStyle(
    color: textColor,
    fontSize: 12,
  );

  static const TextStyle titleTextStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
  );

  static const TextStyle bodyTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 14,
  );

  static const TextStyle statsTextStyle = TextStyle(
    color: statsColor,
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );

  static const TextStyle smallTextStyle = TextStyle(
    fontSize: 14,
  );

  // Padding and Margins
  static const EdgeInsets cardMargin =
  EdgeInsets.symmetric(horizontal: 12, vertical: 8);
  static const EdgeInsets cardPadding = EdgeInsets.all(12.0);

  // Avatar
  static const double avatarRadius = 24;

  // Icons
  static const double iconSize = 16;
}
