import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/assets/images_assets.dart';
import '../../../../core/platinum/components/platinum_button_contoured.dart';
import '../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../routes/authentication_routes.dart';
import '../../../../routes/routes.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: const EdgeInsets.all(PlatinumPadding.xvi),
        color: const Color(0xFFEF5A5A),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.50,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(PlatinumPadding.xvi),
                    child: ImagesAssets.bookstoreLogoLight,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    child: Center(
                      child: Text(
                        "Welcome",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Center(
                    child: Text(
                      "Read without limits",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xxxii,
                  ),
                  PlatinumButtonFull(
                    data: "Create Account",
                    typeButtonFull: TypeButtonFull.secondary,
                    onPressed: () => Modular.to.pushNamed(
                      AuthenticationRoutes.toAuthenticationSignUpScreenRoute,
                    ),
                  ),
                  const SizedBox(
                    height: PlatinumPadding.xvi,
                  ),
                  PlatinumButtonContoured(
                    data: "Log In as Guest",
                    typeButtonContoured: TypeButtonContoured.secondary,
                    onPressed: () => Modular.to.pushNamed(
                      AuthenticationRoutes.toAuthenticationScreenInitialRoute,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
