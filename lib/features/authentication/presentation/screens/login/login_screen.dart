import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../core/assets/images_assets.dart';
import '../../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../../core/platinum/components/platinum_button_link.dart';
import '../../../../../core/platinum/components/platinum_loading.dart';
import '../../../../../core/platinum/components/platinum_snack_bar.dart';
import '../../../../../core/platinum/spacing/platinum_padding.dart';
import '../../controllers/login_controller.dart';
import '../../controllers/login_current_state.dart';
import 'login_sentences.dart';

class LoginScreen extends StatefulWidget {
  final LoginController loginController;

  const LoginScreen({
    Key? key,
    required this.loginController,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool applyPasswordValidation = false;
  bool applyUserNameValidation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          if (widget.loginController.loginCurrentState is ErrorLoginCurrentState) {
            Future.delayed(
              const Duration(seconds: 1),
            ).then((value) {
              ScaffoldMessenger.of(context).showSnackBar(
                PlatinumSnackBar.error(
                  message: LoginSentences.messegeError,
                  action: PlatinumSnackBarAction(
                    label: 'Repetir',
                    onPressed: () {},
                  ),
                ),
              );
            });
          }

          if (widget.loginController.loginCurrentState is LoadingLoginCurrentState) {
            return const PlatinumLoading();
          }

          return Builder(builder: (context) {
            return Center(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: PlatinumPadding.xvi,
                          vertical: PlatinumPadding.xxxii,
                        ),
                        child: ImagesAssets.bookstore,
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
                              hintText: LoginSentences.username,
                              suffixIcon: Icon(
                                widget.loginController.isValidUserName
                                    ? Icons.check_circle_rounded
                                    : Icons.error_rounded,
                              ),
                              prefix: const SizedBox(
                                width: PlatinumPadding.viii,
                              ),
                              errorText: applyUserNameValidation ? widget.loginController.userNameError : null,
                            ),
                            initialValue: widget.loginController.userName,
                            onChanged: (newValue) {
                              widget.loginController.userName = newValue;
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
                            obscureText: !widget.loginController.passwordVisible,
                            onChanged: (newValue) {
                              widget.loginController.password = newValue;
                              applyPasswordValidation = true;
                            },
                            initialValue: widget.loginController.password,
                            decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              hintText: LoginSentences.password,
                              suffixIcon: IconButton(
                                onPressed: () {
                                  widget.loginController.setPasswordVisible(
                                    visible: !widget.loginController.passwordVisible,
                                  );
                                },
                                icon: Icon(
                                  widget.loginController.passwordVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                ),
                              ),
                              prefix: const SizedBox(
                                width: PlatinumPadding.viii,
                              ),
                              errorText: applyPasswordValidation ? widget.loginController.passwordError : null,
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
                            data: LoginSentences.logIn,
                            typeButtonFull: TypeButtonFull.primary,
                            onPressed: widget.loginController.isValidForm ? widget.loginController.authenticate : null,
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
                          text: LoginSentences.dontAccount,
                          textHighlighted: LoginSentences.signUp,
                          onPressed: () {},
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
          });
        },
      ),
    );
  }
}
