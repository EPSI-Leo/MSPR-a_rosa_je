import 'package:flutter/material.dart';

class LinkButton extends StatelessWidget {
  const LinkButton(
      {super.key,
      this.onPressed,
      this.style,
      required this.text,
      required this.color});

  final VoidCallback? onPressed;
  final String text;
  final ButtonStyle? style;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          decoration: TextDecoration.underline,
          color: color,
        ),
      ),
    );
  }
}
