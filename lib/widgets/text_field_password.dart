import 'package:core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword({
    required this.isObscure,
    required this.onChanged,
    super.key,
    this.controller,
  });

  final bool isObscure;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  bool isObscure = true;

  @override
  void initState() {
    isObscure = widget.isObscure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textHint: '*********',
      onChanged: widget.onChanged,
      keyboardType: TextInputType.visiblePassword,
      obscureText: isObscure,
      textController: widget.controller,
      // validator: validatePassword,
      sufixIcon: GestureDetector(
        onTap: () {
          setState(() {
            isObscure = !isObscure;
          });
        },
        child: widget.isObscure
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
