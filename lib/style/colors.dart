import 'package:flutter/material.dart';

class TokensColors {
  final PrimaryColors primaryColors = PrimaryColors();
  final FeedBackColors feedBackColors = FeedBackColors();
  final NeutralColors neutralColors = NeutralColors();
}

class PrimaryColors {
  Color get main => const Color(0xFF1F1C1C);
  Color get dark => const Color(0xFF000000);
  Color get medium => const Color(0xFF252525);
  Color get light => const Color(0xFF4F4D4D);
  Color get white => const Color(0xFFFFFFFF);
}

class FeedBackColors {
  Color get feedbackError => const Color(0xFFDE1212);
  Color get feedbackSuccess => const Color(0xFFDE1212);
  Color get feedbackWarning => const Color(0xFFDE1212);
}

class NeutralColors {
  Color get neutralColor => const Color(0xFF9D9191);
  Color get neutralButtonColor => const Color(0xFFFFFFFF);
}
