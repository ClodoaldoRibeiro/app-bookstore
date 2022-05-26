import 'package:flutter/material.dart';

import '../../../../../core/assets/images_assets.dart';
import '../../../../../core/platinum/platinum_button_full.dart';
import '../../../../../core/platinum/platinum_spacing/platinum_padding.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

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
                    hintText: 'Username',
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
                    hintText: 'Password',
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
                  data: "Log In",
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
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(PlatinumPadding.viii),
                        ),
                      ),
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "Don’t have an account yet?",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        children: <InlineSpan>[
                          TextSpan(
                            text: " Sign up here",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
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
