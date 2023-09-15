import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.validator,
    this.onChanged,
    this.controller,
  });

  final String hintText;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    );

    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black38),
        border: border,
        enabledBorder: border,
        errorBorder: border,
        focusedBorder: border,
      ),
      validator: validator,
      onChanged: onChanged,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
    );
  }
}
