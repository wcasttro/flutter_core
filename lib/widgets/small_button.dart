import 'package:core/style/extensions.dart';
import 'package:core/widgets/image_view_widget.dart';
import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final Function()? onPressed;
  final Color? backgroundColor;
  final double sizeWith;
  final double sizeHeight;
  final String pathImage;
  const SmallButton({
    required this.onPressed,
    required this.pathImage,
    super.key,
    this.backgroundColor,
    this.sizeHeight = 55,
    this.sizeWith = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sizeWith,
      height: sizeHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? context.colors.primaryColors.main,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ImageViewWidget(
            path: pathImage,
          ),
        ),
      ),
    );
  }
}
