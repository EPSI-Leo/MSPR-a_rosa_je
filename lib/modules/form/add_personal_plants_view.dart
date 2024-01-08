import 'package:arosa_je/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlantView extends ConsumerStatefulWidget {
  const AddPlantView({
    super.key,
    required this.plant,
  });

  final String plant;

  @override
  ConsumerState<AddPlantView> createState() => _AddPlantViewState();
}

class _AddPlantViewState extends ConsumerState<AddPlantView> {
  final formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _dateStart = TextEditingController();
  final _dateEnd = TextEditingController();
  final _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final colors = ref.watch(appColorThemeProvider);
    final radius = ref.watch(radiusThemeProvider);
    final paddings = ref.watch(spacingThemeProvider);
    final coreL10n = context.coreL10n;

    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.plant),
        Padding(
          padding: EdgeInsets.all(paddings.sm),
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  AppTextFormField(
                    color: colors.backgroundtextfield,
                    filled: true,
                    label: coreL10n.signinUsername,
                    hint: coreL10n.signinUsernameSentence,
                    tint: colors.textfieldlabel,
                    borderColor: Colors.white,
                    radius: radius.medium,
                    controller: _name,
                    onChanged: (value) {},
                  ),
                  const AppGap.xs(),
                  AppTextFormFieldDate(
                    color: colors.backgroundtextfield,
                    filled: true,
                    label: coreL10n.dateStart,
                    hint: coreL10n.dateStartSentence,
                    tint: colors.textfieldlabel,
                    borderColor: Colors.white,
                    radius: radius.medium,
                    controller: _dateStart,
                    onChanged: (value) {},
                  ),
                  const AppGap.xs(),
                  AppTextFormFieldDate(
                    color: colors.backgroundtextfield,
                    filled: true,
                    label: coreL10n.dateEnd,
                    hint: coreL10n.dateEndSentence,
                    tint: colors.textfieldlabel,
                    borderColor: Colors.white,
                    radius: radius.medium,
                    controller: _dateEnd,
                    onChanged: (value) {},
                  ),
                  const AppGap.xs(),
                  DescriptionTextField(
                    label: coreL10n.description,
                    hint: coreL10n.descriptionSentence,
                    borderColor: colors.textfieldlabel,
                    controller: _descriptionController,
                    color: colors.backgroundtextfield,
                    onChanged: (value) {},
                    maxLength: 500,
                  ),
                  const AppGap.xs(),
                  AppButton(
                    label: coreL10n.registerPlant,
                    onPressed: () {},
                    color: colors.primary,
                  )
                ],
              )),
        )
      ],
    ));
  }
}
