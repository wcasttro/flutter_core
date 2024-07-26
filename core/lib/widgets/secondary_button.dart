import 'package:core/style/custom_colors.dart';
import 'package:core/style/text_style.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: labelSecondaryButtonColor,
          textStyle: fontPrimaryButton,
          shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: buttonColor,
              width: 2.0,
            ),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
