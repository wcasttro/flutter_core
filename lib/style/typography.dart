import 'package:core/style/colors.dart';
import 'package:flutter/material.dart';

class TokensTypography {
  static TokensColors colors = TokensColors();

  TextStyle get extraLargeTitle => const TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w600,
      );

  TextStyle get largeTitle => const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w500,
      );

  TextStyle get mediumTitle => const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      );

  TextStyle get smallTitle => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.normal,
      );

  TextStyle get extraSmallTitle => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );

  TextStyle get body => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
      );

  TextStyle get smallBody => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  TextStyle get extraSmallBody => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      );
}
