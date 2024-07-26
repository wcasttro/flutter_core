import 'package:core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({
    super.key,
    this.isObscure = false,
    this.controller,
  });

  final bool isObscure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      textHint: 'email@email.com',
      keyboardType: TextInputType.emailAddress,
      // validator: validateEmail,
      textController: controller,
    );
  }
}
