import 'package:arosa_je/core/core.dart';
import 'package:arosa_je/modules/app/session_manager.dart';
import 'package:arosa_je/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginView extends ConsumerStatefulWidget {
  const LoginView({super.key});

  @override
  ConsumerState<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends ConsumerState<LoginView> {
  final _login = TextEditingController();

  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  bool _validationError = false;

  @override
  void dispose() {
    _login.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ref.watch(appColorThemeProvider);
    final spacings = ref.watch(spacingThemeProvider);
    final radius = ref.watch(radiusThemeProvider);
    final coreL10n = context.coreL10n;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: spacings.small),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Image(image: AssetImage('lib/assets/images/icon.png')),
                  Text(
                    coreL10n.signinTitle1,
                    style: const TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const AppGap.xxl(),
                  Text(coreL10n.signinSentence1,
                      style: TextStyle(color: colors.textfieldlabel)),
                  const AppGap.xs(),
                  SizedBox(
                    height: _validationError
                        ? spacings.large * 3 / 2
                        : spacings.large,
                    child: AppTextFormField(
                      color: colors.backgroundtextfield,
                      filled: true,
                      label: coreL10n.signinUsername,
                      hint: coreL10n.signinUsernameSentence,
                      tint: colors.textfieldlabel,
                      borderColor: Colors.white,
                      radius: radius.medium,
                      controller: _login,
                      onChanged: (value) {},
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          setState(() {
                            _validationError = true;
                          });
                          return coreL10n.validateText;
                        } else {
                          setState(() {
                            _validationError = false;
                          });
                          return null; // Validation réussie
                        }
                      },
                    ),
                  ),
                  const AppGap.xs(),
                  const AppGap.small(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: spacings.xs),
                    child: SizedBox(
                      width: double.infinity,
                      height: spacings.large,
                      child: AppButton(
                        color: colors.primary,
                        label: coreL10n.signin,
                        fontSize: 18.0,
                        onPressed: () async {
                          await SessionManager.setUsername(_login.text);
                          await SessionManager.setLoggedIn(true);
                          context.goNamed(AppRoute.home.name);
                          //context.goNamed(AppRoute.home.name);
                          /*ref
                              .read(loginProvider.notifier)
                              .login(_login.toString(), _password.toString());*/
                          /*if (_formKey.currentState?.validate() ?? false) {
                            // Le formulaire est valide, effectuez la connexion
                            final loginNotifier =
                                ref.read(loginProvider.notifier);
                            await loginNotifier.login(
                                _login.text, _password.text, isChecked);

                            // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
                            if (loginNotifier.state) {
                              // Connexion réussie
                               //TODO change to token
                              await SessionManager.setLoggedIn(true);
                              // ignore: use_build_context_synchronously
                              context.goNamed(AppRoute.home.name);
                            } else {
                              // Échec de la connexion, gérer en conséquence
                            }
                          }*/
                        },
                      ),
                    ),
                  ),
                  Row(
                    // ignore: sort_child_properties_last
                    children: <Widget>[
                      Text(coreL10n.signinDontHaveAccount,
                          style: TextStyle(color: colors.textfieldlabel)),
                      TextButton(
                        child: Text(
                          coreL10n.signup,
                          style: const TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          context.goNamed(AppRoute.register.name);
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
}
