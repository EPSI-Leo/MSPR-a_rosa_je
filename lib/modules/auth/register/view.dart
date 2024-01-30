import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegisterView extends ConsumerStatefulWidget {
  const RegisterView({super.key});

  @override
  ConsumerState<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends ConsumerState<RegisterView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();

  bool hasViewedTermsOfUse = false;

  @override
  Widget build(
    BuildContext context,
  ) {
    final colors = ref.watch(appColorThemeProvider);
    final spacings = ref.watch(spacingThemeProvider);
    final radius = ref.watch(radiusThemeProvider);
    final coreL10n = context.coreL10n;

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(spacings.small),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppGap.medium(),
                  Text(
                    coreL10n.signupTitle,
                    style: const TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const AppGap.medium(),
                  AppTextFormField(
                    color: colors.backgroundtextfield,
                    filled: true,
                    label: coreL10n.signinUsername,
                    hint: coreL10n.signinUsernameSentence,
                    tint: colors.textfieldlabel,
                    borderColor: Colors.white,
                    radius: radius.medium,
                    controller: _usernameController,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {});
                        return coreL10n.validateEmail;
                      } else {}
                      return null;
                    },
                  ),
                  const AppGap.xs(),
                  AppButton(
                    label: coreL10n.signup,
                    color: colors.primary,
                    onPressed: () async {
                      context.goNamed(AppRoute.home.name); // temp
                      /*if (_formKey.currentState!.validate()) {
                        if (!_acceptTermsOfUse) {
                          setState(() {
                            _termsError = true;
                          });
                          return;
                        } else {
                          if (hasViewedTermsOfUse == true) {
                            //TODO makeSomething
                            final registerNotifier =
                                ref.read(registerProvider.notifier);
                            await registerNotifier.register(
                                _firstnameController.text,
                                _lastnameController.text,
                                _usernameController.text,
                                _passwordController.text,
                                _emailController.text,
                                _phonenumberController.text,
                                _addressController.text,
                                _postalCodeController.text,
                                _cityController.text,
                                _acceptTermsOfUse);
                            // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                            if (registerNotifier.state) {
                              // L'inscription a réussi, effectuez la navigation ici
                              // ignore: use_build_context_synchronously
                              context.goNamed(AppRoute.login.name);
                            } else {
                              // L'inscription a échoué, vous pouvez ajouter une logique supplémentaire ici si nécessaire
                              Fluttertoast.showToast(
                                msg: 'no',
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: colors.primary,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }
                          } else {
                            Fluttertoast.showToast(
                              msg: coreL10n.signupTermsOfuse,
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: colors.primary,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          }
                        }
                      }*/
                    },
                  ),
                  Row(
                    // ignore: sort_child_properties_last
                    children: <Widget>[
                      Text(coreL10n.signupHaveAccount,
                          style: TextStyle(color: colors.textfieldlabel)),
                      TextButton(
                        child: Text(
                          coreL10n.signin,
                          style: const TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          context.goNamed(AppRoute.login.name);
                        },
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String value) {
    // Expression régulière pour valider une adresse e-mail
    RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegExp.hasMatch(value);
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return context.coreL10n.validatePhone;
    }
    String pattern = r'^\d{10}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return context.coreL10n.validatePhoneValid;
    }

    return null;
  }

  String? validatePostalCode(String? value) {
    if (value == null || value.isEmpty) {
      return context.coreL10n.validatePostaleCode;
    }
    String pattern = r'^\d{5}$';
    RegExp regExp = RegExp(pattern);

    if (!regExp.hasMatch(value)) {
      return context.coreL10n.validatePostaleCodeValid;
    }

    return null;
  }
}
