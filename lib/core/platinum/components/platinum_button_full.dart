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

  const PlatinumButtonFull({
    Key? key,
    this.onPressed,
    required this.data,
    required this.typeButtonFull,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFEF5A5A);

    return SizedBox(
      height: PlatinumPadding.xxxxxii,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary:
              typeButtonFull == TypeButtonFull.primary ? color : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(PlatinumPadding.viii),
          ),
        ),
        child: Text(
          data,
          style: TextStyle(
            color:
                typeButtonFull == TypeButtonFull.primary ? Colors.white : color,
          ),
        ),
      ),
    );
  }
}
