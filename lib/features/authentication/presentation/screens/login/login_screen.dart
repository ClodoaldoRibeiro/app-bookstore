import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../core/assets/images_assets.dart';
import '../../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../../core/platinum/components/platinum_button_link.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                          widget.loginController.userNameValid ? Icons.check_circle_rounded : Icons.error_rounded,
                        ),
                        prefix: const SizedBox(
                          width: PlatinumPadding.viii,
                        ),
                        errorText: widget.loginController.userNameError,
                      ),
                      onChanged: (newValue) {
                        widget.loginController.userName = newValue;
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
                      },
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
                        errorText: widget.loginController.passwordError,
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
                      onPressed: widget.loginController.formValid ? widget.loginController.authenticate : null,
                      isLoading: widget.loginController.loginCurrentState is LoadingLoginCurrentState,
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
      ),
    );
  }
}
