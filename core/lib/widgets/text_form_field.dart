import 'package:core/style/custom_colors.dart';
import 'package:core/style/custom_radius_border.dart';
import 'package:core/style/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textController,
    this.textHint,
    this.sufixIcon,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.errorText,
    this.onChanged,
    this.focusNode,
  });

  final TextEditingController? textController;
  final String? textHint;
  final Widget? sufixIcon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final String? errorText;
  final Function(String)? onChanged;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: TextFormField(
        controller: textController,
        validator: validator,
        keyboardType: keyboardType,
        obscureText: obscureText,
        focusNode: focusNode,
        autovalidateMode: (focusNode != null && focusNode!.hasFocus)
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        decoration: InputDecoration(
          hintText: textHint,
          hintStyle: fontHintTextField,
          suffix: sufixIcon,
          fillColor: textFieldFillColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(textFieldRadius),
          ),
          errorText: errorText,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
