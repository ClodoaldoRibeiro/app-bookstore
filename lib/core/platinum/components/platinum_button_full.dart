import 'package:flutter/material.dart';

import '../spacing/platinum_padding.dart';

enum TypeButtonFull {
  primary,
  secondary,
}

class PlatinumButtonFull extends StatelessWidget {
  final void Function()? onPressed;
  final String data;
  final TypeButtonFull typeButtonFull;
  final bool isLoading;

  const PlatinumButtonFull({
    Key? key,
    this.onPressed,
    required this.data,
    required this.typeButtonFull,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFEF5A5A);

    return SizedBox(
      height: PlatinumPadding.xxxxxii,
      child: ElevatedButton(
        onPressed: isLoading ? () {} : onPressed,
        style: ElevatedButton.styleFrom(
          primary: typeButtonFull == TypeButtonFull.primary ? color : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PlatinumPadding.viii),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isLoading)
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: PlatinumPadding.xii,
                ),
                child: SizedBox(
                  height: PlatinumPadding.xxiv,
                  width: PlatinumPadding.xxiv,
                  child: CircularProgressIndicator(
                    color: typeButtonFull == TypeButtonFull.primary ? Colors.white : color,
                  ),
                ),
              ),
            Text(
              isLoading ? 'Aguarde..' : data,
              style: TextStyle(
                color: typeButtonFull == TypeButtonFull.primary ? Colors.white : color,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
