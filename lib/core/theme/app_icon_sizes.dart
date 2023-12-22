import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_icon_sizes.freezed.dart';

/// The AppIconSizes of the app.
/// It will be created directly here.
final appIconSizesProvider = Provider<AppIconSizes>(
  (ref) => AppIconSizes.regular(),
);

@freezed
class AppIconSizes with _$AppIconSizes {
  const factory AppIconSizes({
    required double micro,
    required double mini,
    required double tiny,
    required double small,
    required double medium,
    required double large,
  }) = _AppIconSizes;
  const AppIconSizes._();

  factory AppIconSizes.regular() => const AppIconSizes(
        micro: 16,
        mini: 20,
        tiny: 25,
        small: 30,
        medium: 35,
        large: 60,
      );
}
