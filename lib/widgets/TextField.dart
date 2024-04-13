import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final bool isPassword;

  const CustomTextFormField({
    Key? key,
    required this.label,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label';
        }
        return null;
      },
    );
  }
}
