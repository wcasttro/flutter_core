import 'package:core/style/extensions.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.label,
    required this.onPressed,
    super.key,
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
          backgroundColor: context.colors.primaryColors.main,
          foregroundColor: context.colors.neutralColors.neutralButtonColor,
          textStyle: context.typography.smallTitle,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: context.colors.neutralColors.neutralButtonColor,
              width: 2.0,
            ),
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
