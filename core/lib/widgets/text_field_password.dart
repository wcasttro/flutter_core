import 'package:core/util/validator.dart';
import 'package:core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class TextFieldPassword extends StatefulWidget {
  const TextFieldPassword({
    super.key,
    this.isObscure = true,
    required this.onChanged,
    this.controller,
  });

  final bool isObscure;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  State<TextFieldPassword> createState() => _TextFieldPasswordState();
}

class _TextFieldPasswordState extends State<TextFieldPassword> {
  late bool _isObscure;

  @override
  void initState() {
    _isObscure = widget.isObscure;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textHint: '*********',
      onChanged: widget.onChanged,
      keyboardType: TextInputType.visiblePassword,
      obscureText: widget.isObscure,
      textController: widget.controller,
      validator: validatePassword,
      sufixIcon: GestureDetector(
        onTap: () {
          setState(() {
            _isObscure = _isObscure;
          });
        },
        child: widget.isObscure
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
