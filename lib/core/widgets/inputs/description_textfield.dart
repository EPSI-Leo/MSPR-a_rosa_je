import 'package:flutter/material.dart';

class DescriptionTextField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final int? maxLength;
  final Color? color;
  final Color? borderColor;
  final double radius;
  final String? label;
  final String? hint;

  DescriptionTextField({
    required this.controller,
    this.onChanged,
    this.validator,
    this.maxLength,
    this.color,
    this.borderColor,
    this.radius = 8.0,
    this.label,
    this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      maxLength: maxLength,
      maxLines: 5, // Set the number of lines you want for the description
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: TextStyle(color: borderColor),
        hintStyle: TextStyle(color: borderColor),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
        ),
      ),
    );
  }
}
