import 'package:flutter/material.dart';

class CustomInputField extends StatefulWidget {
  final TextEditingController? controller;
  final TextStyle? style;
  final bool isObscure;
  final FocusNode? focusNode;
  final InputDecoration? decoration;
  final TextInputType? keyboardType;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? sufixIcon;
  final Widget? prefixIcon;
  final String? errorText;

  const CustomInputField({
    super.key,
    this.controller,
    this.isObscure = false,
    this.style,
    this.focusNode,
    this.decoration,
    this.keyboardType,
    this.hintStyle,
    this.hintText,
    this.prefixIcon,
    this.sufixIcon,
    this.errorText,
  });

  @override
  State<CustomInputField> createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: widget.controller,
          obscureText: widget.isObscure,
          style: widget.style,
          focusNode: widget.focusNode,
          decoration: InputDecoration(
            errorText: widget.errorText,
            suffixIconConstraints:
                const BoxConstraints(minHeight: 26, minWidth: 26),
            prefixIconConstraints:
                const BoxConstraints(minHeight: 26, minWidth: 26),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            fillColor: Colors.white,
            filled: true,
            suffixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: widget.prefixIcon,
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: widget.sufixIcon,
            ),
            hintText: widget.hintText,
            hintStyle: widget.hintStyle ?? TextStyle(fontSize: 18),
          ),
          keyboardType: widget.keyboardType,
        ),
        widget.errorText == null
            ? const SizedBox(
                height: 22,
              )
            : const SizedBox(),
      ],
    );
  }
}
