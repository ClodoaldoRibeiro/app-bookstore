import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/assets/images_assets.dart';
import '../../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../../core/platinum/components/platinum_button_link.dart';
import '../../../../../core/platinum/components/platinum_loading.dart';
import '../../../../../core/platinum/components/platinum_snack_bar.dart';
import '../../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../../routes/authentication_routes.dart';
import '../../../../../routes/home_routes.dart';
import '../../controllers/signup_controller.dart';
import '../../controllers/signup_current_state.dart';
import 'signup_sentences.dart';

class SignUpScreen extends StatefulWidget {
  final SignUpController signUpController;

  const SignUpScreen({
    Key? key,
    required this.signUpController,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  bool applyNameValidation = false;
  bool applyUserNameValidation = false;
  bool applyEmailValidation = false;
  bool applyPasswordValidation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          if (widget.signUpController.state is LoadingSignUpCurrentState) {
            return const PlatinumLoading(
              message: 'Registering, please wait...',
            );
          }

          if (widget.signUpController.state is LoadedSignUpCurrentState) {
            Modular.to.navigate(
              HomeRoutes.toHomeScreenInitialRoute,
            );
          }

          if (widget.signUpController.state is ErrorSignUpCurrentState) {
            Future.delayed(
              const Duration(seconds: 1),
            ).then((value) {
              ScaffoldMessenger.of(context).showSnackBar(
                PlatinumSnackBar.error(
                  message: SignUpSentences.messegeError,
                  action: PlatinumSnackBarAction(
                    label: 'Repeat',
                    onPressed: () {},
                  ),
                ),
              );
            });
          }

          return Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: PlatinumPadding.xvi,
                        vertical: PlatinumPadding.xxxii,
                      ),
                      child: SizedBox(
                        height: 115,
                        width: 124,
                        child: ImagesAssets.bookstore,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PlatinumPadding.xvi,
                    ),
                    child: Observer(
                      builder: (context) {
                        return TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: SignUpSentences.name,
                            suffixIcon: Icon(
                              widget.signUpController.isValidName
                                  ? Icons.check_circle_rounded
                                  : Icons.error_rounded,
                            ),
                            prefix: const SizedBox(
                              width: PlatinumPadding.viii,
                            ),
                            errorText: applyNameValidation
                                ? widget.signUpController.nameError
                                : null,
                          ),
                          initialValue: widget.signUpController.name,
                          onChanged: (newValue) {
                            widget.signUpController.name = newValue;
                            applyNameValidation = true;
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PlatinumPadding.xvi,
                    ),
                    child: Observer(
                      builder: (context) {
                        return TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: SignUpSentences.userName,
                            suffixIcon: Icon(
                              widget.signUpController.isValidUserName
                                  ? Icons.check_circle_rounded
                                  : Icons.error_rounded,
                            ),
                            prefix: const SizedBox(
                              width: PlatinumPadding.viii,
                            ),
                            errorText: applyUserNameValidation
                                ? widget.signUpController.userNameError
                                : null,
                          ),
                          initialValue: widget.signUpController.userName,
                          onChanged: (newValue) {
                            widget.signUpController.userName = newValue;
                            applyUserNameValidation = true;
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PlatinumPadding.xvi,
                    ),
                    child: Observer(
                      builder: (context) {
                        return TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: SignUpSentences.email,
                            suffixIcon: Icon(
                              widget.signUpController.isValidEmail
                                  ? Icons.check_circle_rounded
                                  : Icons.error_rounded,
                            ),
                            prefix: const SizedBox(
                              width: PlatinumPadding.viii,
                            ),
                            errorText: applyEmailValidation
                                ? widget.signUpController.emailError
                                : null,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          initialValue: widget.signUpController.email,
                          onChanged: (newValue) {
                            widget.signUpController.email = newValue;
                            applyEmailValidation = true;
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PlatinumPadding.xvi,
                    ),
                    child: Observer(
                      builder: (context) {
                        return TextFormField(
                          obscureText: !widget.signUpController.passwordVisible,
                          onChanged: (newValue) {
                            widget.signUpController.password = newValue;
                            applyPasswordValidation = true;
                          },
                          initialValue: widget.signUpController.password,
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: SignUpSentences.password,
                            suffixIcon: IconButton(
                              onPressed: () {
                                widget.signUpController.setPasswordVisible(
                                  visible:
                                      !widget.signUpController.passwordVisible,
                                );
                              },
                              icon: Icon(
                                widget.signUpController.passwordVisible
                                    ? Icons.visibility_off_outlined
                                    : Icons.visibility_outlined,
                              ),
                            ),
                            prefix: const SizedBox(
                              width: PlatinumPadding.viii,
                            ),
                            errorText: applyPasswordValidation
                                ? widget.signUpController.passwordError
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PlatinumPadding.xvi,
                    ),
                    child: Observer(
                      builder: (context) {
                        return PlatinumButtonFull(
                          data: SignUpSentences.createAccount,
                          typeButtonFull: TypeButtonFull.primary,
                          onPressed: widget.signUpController.isValidForm
                              ? widget.signUpController.register
                              : null,
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PlatinumPadding.xvi,
                    ),
                    child: SizedBox(
                      height: PlatinumPadding.xxxxviii,
                      child: PlatinumButtonLink(
                        text: SignUpSentences.alreadyAccount,
                        textHighlighted: SignUpSentences.logInHere,
                        onPressed: () {
                          Modular.to.pushReplacementNamed(
                            AuthenticationRoutes
                                .toAuthenticationScreenInitialRoute,
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxiv,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
