import 'package:bookstore/features/authentication/presenter/screens/login/login_sentences.dart';
import 'package:flutter/material.dart';

import '../../../../../core/assets/images_assets.dart';
import '../../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../../core/platinum/components/platinum_button_link.dart';
import '../../../../../core/platinum/spacing/platinum_padding.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
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
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: LoginSentences.username,
                    suffixIcon: Icon(
                      Icons.check_circle_rounded,
                      color: Colors.green,
                    ),
                    prefix: SizedBox(
                      width: PlatinumPadding.viii,
                    ),
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
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: LoginSentences.password,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                      ),
                    ),
                    prefix: const SizedBox(
                      width: PlatinumPadding.viii,
                    ),
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
                  data: LoginSentences.logIn,
                  typeButtonFull: TypeButtonFull.primary,
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
