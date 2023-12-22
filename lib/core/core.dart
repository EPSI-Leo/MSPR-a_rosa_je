library core;

import 'package:flutter/foundation.dart';

//get
export 'package:get/get.dart';
//gap
export 'package:arosa_je/core/theme/app_gap.dart';
//buttons
export 'package:arosa_je/core/widgets/buttons/app_arrow_back_icon_button.dart';
export 'package:arosa_je/core/widgets/buttons/app_button.dart';
export 'package:arosa_je/core/widgets/buttons/link_button.dart';
//circular progress
export 'package:arosa_je/core/widgets/circularprogess/app_circular_progress.dart';
//inputs
export 'package:arosa_je/core/widgets/inputs/app_textformfield.dart';

//l10n
export "l10n/l10n.dart";
//themes
export "theme/app_animations.dart";
export "theme/app_colors.dart";
export "theme/app_icon_sizes.dart";
export "theme/app_images.dart";
export "theme/app_radius.dart";
export "theme/app_spacing.dart";
export "theme/app_text_styles.dart";

printDebug(String message) {
  if (kDebugMode) {
    print(message);
  }
}
