import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_radius.freezed.dart';

/// The AppRadiusTheme of the app.
/// It will be created directly here.
final radiusThemeProvider = Provider<AppRadiusTheme>(
  (ref) => AppRadiusTheme.regular(),
);

@freezed
class AppRadiusTheme with _$AppRadiusTheme {
  const factory AppRadiusTheme({
    required double xxs,
    required double xs,
    required double ms,
    required double small,
    required double medium,
    required double large,
    required double xl,
    required double xxl,
    required double xxxl,
  }) = _AppRadiusTheme;

  factory AppRadiusTheme.regular() => const AppRadiusTheme(
        xxs: 2,
        xs: 4,
        ms: 6,
        small: 8,
        medium: 10,
        large: 12,
        xl: 14,
        xxl: 16,
        xxxl: 18,
      );
}
