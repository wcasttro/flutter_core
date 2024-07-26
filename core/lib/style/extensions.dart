import 'package:core/style/colors.dart';
import 'package:core/style/padding.dart';
import 'package:core/style/radius.dart';
import 'package:core/style/typography.dart';
import 'package:flutter/material.dart';

extension ContextTokens on BuildContext {
  ThemeData get tokens => Theme.of(this);
  TokensColors get colors => TokensColors();
  TokensTypography get typography => TokensTypography();
  TokensRadius get radius => TokensRadius();
  TokensPadding get padding => TokensPadding();
  Size get size => MediaQuery.of(this).size;
  ScaffoldState get scaffold => Scaffold.of(this);
}
