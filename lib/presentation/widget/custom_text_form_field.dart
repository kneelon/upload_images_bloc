import 'package:flutter/material.dart';
import 'package:xam/presentation/utility/size_config.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool isAutoFill;
  final String? Function(String?)? validator;
  final String? errorMessage;

  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.label,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.isAutoFill = false,
    this.validator,
    this.errorMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      obscureText: obscureText,
      autofillHints: isAutoFill ? [AutofillHints.email] : null,
      validator: validator,
    );
  }
}
