import 'package:flutter/material.dart';

class AppArrowBackIconButton extends StatelessWidget {
  const AppArrowBackIconButton(
      {super.key,
      this.onPressed,
      this.icon,
      this.style,
      this.fontSize,
      required this.tint});

  final VoidCallback? onPressed;

  final Widget? icon;
  final ButtonStyle? style;
  final Color? tint;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.arrow_back_ios),
      color: tint,
      iconSize: fontSize,
    );
  }
}
