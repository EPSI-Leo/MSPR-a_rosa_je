import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_text_styles.freezed.dart';

/// The textStyles theme of the app.
Provider<AppTextTheme> textThemeProvider = Provider<AppTextTheme>((ref) {
  return AppTextTheme.main();
});

@freezed
class AppTextTheme with _$AppTextTheme {
  const factory AppTextTheme({
    required AppTextStyle h1,
    required AppTextStyle h2,
    required AppTextStyle h3,
    required AppTextStyle h4,
    required AppTextStyle h5,
    required AppTextStyle h6,
    required AppTextStyle h7,
    required AppTextStyle subtitle1,
    required AppTextStyle subtitle2,
    required AppTextStyle subtitle3,
    required AppTextStyle subtitle4,
    required AppTextStyle subtitle5,
    required AppTextStyle subtitle6,
    required AppTextStyle body1,
    required AppTextStyle body2,
    required AppTextStyle body3,
    required AppTextStyle caption1,
    required AppTextStyle caption2,
    required AppTextStyle largeButton,
    required AppTextStyle actionBar,
  }) = _AppTextTheme;
  const AppTextTheme._();

  // The default text theme
  factory AppTextTheme.main() => AppTextTheme(
        h1: AppTextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        h2: AppTextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        h3: AppTextStyle(
          fontSize: 24,
          fontWeight: FontWeight.normal,
        ),
        h4: AppTextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        h5: AppTextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
        h6: AppTextStyle(
          fontSize: 18,
          fontWeight: FontWeight.normal,
        ),
        h7: AppTextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
        ),
        subtitle1: AppTextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        subtitle2: AppTextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        subtitle3: AppTextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
        ),
        subtitle4: AppTextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        subtitle5: AppTextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        subtitle6: AppTextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal,
        ),
        body1: AppTextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        body2: AppTextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        body3: AppTextStyle(
          fontSize: 17,
          fontWeight: FontWeight.normal,
        ),
        caption1: AppTextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
        caption2: AppTextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        largeButton: AppTextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
        ),
        actionBar: AppTextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
      );
}

class AppTextStyle {
  AppTextStyle({
    this.fontFamily = defaultFontFamily,
    this.fontSize,
    this.fontWeight,
    this.letterSpacing,
  });

  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? letterSpacing;

  static const defaultFontFamily = 'Barlow';

  TextStyle withColor(Color color) => TextStyle(
        fontFamily: fontFamily,
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
      );
}

extension TextStyleExtension on TextStyle {
  TextStyle get normal => copyWith(fontWeight: FontWeight.normal);
  TextStyle get semiBold => copyWith(fontWeight: FontWeight.w500);
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);
  TextStyle get underline => copyWith(decoration: TextDecoration.underline);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
  TextStyle withOpacity(double opacity) => copyWith(
        color: color?.withOpacity(opacity),
      );
}
