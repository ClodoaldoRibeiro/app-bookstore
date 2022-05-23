import 'package:bookstore/core/design_system/platinum_button_contoured.dart';
import 'package:bookstore/core/design_system/platinum_button_full.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets/images_assets.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: const Color(0xFFEF5A5A),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: ImagesAssets.bookstoreLogoLight,
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
