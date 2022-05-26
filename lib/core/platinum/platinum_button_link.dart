import 'package:flutter/material.dart';

import 'platinum_spacing/platinum_padding.dart';

enum TypeButtonLink {
  primary,
  secondary,
}

class PlatinumButtonLink extends StatelessWidget {
  final void Function()? onPressed;
  final String data;
  final TypeButtonLink typeButtonLink;

  const PlatinumButtonLink({
    Key? key,
    this.onPressed,
    required this.data,
    required this.typeButtonLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFEF5A5A);

    return SizedBox(
      height: PlatinumPadding.xxxxxii,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PlatinumPadding.viii),
          ),
          side: BorderSide(
            color:
                typeButtonLink == TypeButtonLink.primary ? color : Colors.white,
          ),
        ),
        child: Text(
          data,
          style: TextStyle(
            color:
                typeButtonLink == TypeButtonLink.primary ? color : Colors.white,
          ),
        ),
      ),
    );
  }
}
