import 'package:core/style/extensions.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function()? onPressed;
  final double sizeWith;
  final double sizeHeight;
  final String text;
  const PrimaryButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.sizeHeight = 55,
    this.sizeWith = double.infinity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWith,
      height: sizeHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.neutralColors.neutralButtonColor,
          foregroundColor: context.colors.neutralColors.neutralButtonColor,
          textStyle: context.typography.smallTitle,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: context.colors.neutralColors.neutralButtonColor,
              width: 2.0,
            ),
          ),
        ),
        child: Text(
          text,
          style: context.typography.smallTitle.copyWith(
            color: context.colors.primaryColors.dark,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
