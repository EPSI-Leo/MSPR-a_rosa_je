import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_colors.freezed.dart';

//No manage dark theme in this version
final appColorThemeProvider = Provider<AppColorTheme>((ref) {
  return AppColorTheme.light();
});

/// Colors used in the app.
@freezed
class AppColorTheme with _$AppColorTheme {
  const factory AppColorTheme({
    required Color primary,
    required Color secondary,
    required Color background,
    required Color surface,
    required Color onSurface,
    required Color backgroundtextfield,
    required Color textfieldlabel,
    required Color backgroundColor,
  }) = _AppColorTheme;

  factory AppColorTheme.light() => const AppColorTheme(
        primary: Colors.black,
        secondary: Color(0xFF283846),
        background: Color(0xFFFFFFFF),
        surface: Color(0xFFFFFFFF),
        onSurface: Color(0xFFA3A3A3),
        backgroundtextfield: Color.fromARGB(255, 226, 226, 226),
        textfieldlabel: Color.fromARGB(255, 91, 91, 91),
        backgroundColor: Color(0xFFEDECF2),
      );
}
