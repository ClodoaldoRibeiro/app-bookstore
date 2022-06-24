import 'package:flutter/material.dart';

import '../../../../../core/assets/images_assets.dart';
import '../../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../../core/platinum/components/platinum_button_link.dart';
import '../../../../../core/platinum/spacing/platinum_padding.dart';
import '../../controllers/signup_controller.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: SignUpSentences.name,
                    suffixIcon: Icon(
                      Icons.error_rounded,
                      // widget.loginController.isValidUserName
                      //     ? Icons.check_circle_rounded
                      //     : Icons.error_rounded,
                    ),
                    prefix: SizedBox(
                      width: PlatinumPadding.viii,
                    ),
                    // errorText: applyUserNameValidation ? widget.loginController.userNameError : null,
                  ),
                  // initialValue: widget.loginController.userName,
                  onChanged: (newValue) {
                    // widget.loginController.userName = newValue;
                    // applyUserNameValidation = true;
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
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: SignUpSentences.userName,
                    suffixIcon: Icon(
                      Icons.check_circle_rounded,
                      // widget.loginController.isValidUserName
                      //     ? Icons.check_circle_rounded
                      //     : Icons.error_rounded,
                    ),
                    prefix: SizedBox(
                      width: PlatinumPadding.viii,
                    ),
                    // errorText: applyUserNameValidation ? widget.loginController.userNameError : null,
                  ),
                  // initialValue: widget.loginController.userName,
                  onChanged: (newValue) {
                    // widget.loginController.userName = newValue;
                    // applyUserNameValidation = true;
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
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: SignUpSentences.email,
                    suffixIcon: Icon(
                      Icons.check_circle_rounded,
                      // widget.loginController.isValidUserName
                      //     ? Icons.check_circle_rounded
                      //     : Icons.error_rounded,
                    ),
                    prefix: SizedBox(
                      width: PlatinumPadding.viii,
                    ),
                    // errorText: applyUserNameValidation ? widget.loginController.userNameError : null,
                  ),
                  // initialValue: widget.loginController.userName,
                  onChanged: (newValue) {
                    // widget.loginController.userName = newValue;
                    // applyUserNameValidation = true;
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
                child: TextFormField(
                  // obscureText: !widget.loginController.passwordVisible,
                  obscureText: true,
                  onChanged: (newValue) {
                    // widget.loginController.password = newValue;
                    // applyPasswordValidation = true;
                  },
                  // initialValue: widget.loginController.password,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: SignUpSentences.password,
                    suffixIcon: IconButton(
                      onPressed: () {
                        // widget.loginController.setPasswordVisible(
                        //   visible: !widget.loginController.passwordVisible,
                        // );
                      },
                      icon: const Icon(Icons.visibility_off_outlined),
                      // icon: Icon(
                      //   widget.loginController.passwordVisible
                      //       ? Icons.visibility_off_outlined
                      //       : Icons.visibility_outlined,
                      // ),
                    ),
                    prefix: const SizedBox(
                      width: PlatinumPadding.viii,
                    ),
                    // errorText: applyPasswordValidation ? widget.loginController.passwordError : null,
                  ),
                ),
              ),
              const SizedBox(
                height: PlatinumPadding.xxiv,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: PlatinumPadding.xvi,
                ),
                child: PlatinumButtonFull(
                  data: SignUpSentences.createAccount,
                  typeButtonFull: TypeButtonFull.primary,
                  // onPressed: widget.loginController.isValidForm ? widget.loginController.authenticate : null,
                  onPressed: () {},
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
