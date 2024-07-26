import 'package:core/style/extensions.dart';
import 'package:core/widgets/custom_image.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.path,
    required this.onPressed,
  });

  final String path;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      width: 75,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.colors.neutralColors.neutralButtonColor,
          foregroundColor: context.colors.neutralColors.neutralButtonColor,
          textStyle: context.typography.smallBody,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40.0),
          ),
        ),
        child: CustomImage(path: path),
      ),
    );
  }
}
