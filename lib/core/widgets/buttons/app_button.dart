import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.onPressed,
      this.icon,
      this.style,
      this.fontSize,
      this.fontColor,
      this.isActive = true,
      required this.label,
      required this.color});

  final VoidCallback? onPressed;
  final String label;
  final Widget? icon;
  final ButtonStyle? style;
  final Color? color;
  final double? fontSize;
  final Color? fontColor;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (icon == null) {
      return ElevatedButton(
        onPressed: isActive ? onPressed : null,
        style: style ??
            ElevatedButton.styleFrom(
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                backgroundColor: color),
        child:
            Text(label, style: TextStyle(fontSize: fontSize, color: fontColor)),
      );
    }
    return ElevatedButton.icon(
      onPressed: isActive ? onPressed : null,
      icon: icon!,
      label: Text(label),
      style: style ??
          ElevatedButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
    );
  }
}
