import 'package:core/style/extensions.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatefulWidget {
  final Function() onPressed;
  final String text;
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<TextButtonWidget> createState() => _TextButtonWidgetState();
}

class _TextButtonWidgetState extends State<TextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Text(
        widget.text,
        style: context.typography.body.copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
