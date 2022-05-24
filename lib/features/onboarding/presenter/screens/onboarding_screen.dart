import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/assets/images_assets.dart';
import '../../../../core/design_system/platinum_button_contoured.dart';
import '../../../../core/design_system/platinum_button_full.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFEF5A5A),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
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
                    padding: const EdgeInsets.all(16),
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
                    height: 32,
                  ),
                  PlatinumButtonFull(
                    data: "Create Account",
                    typeButtonFull: TypeButtonFull.secondary,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  PlatinumButtonContoured(
                    data: "Log In as Guest",
                    typeButtonContoured: TypeButtonContoured.secondary,
                    onPressed: () {},
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
