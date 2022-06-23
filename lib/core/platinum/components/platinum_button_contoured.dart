import 'package:flutter/material.dart';

import '../spacing/platinum_padding.dart';

enum TypeButtonContoured {
  primary,
  secondary,
}

class PlatinumButtonContoured extends StatelessWidget {
  final void Function()? onPressed;
  final String data;
  final TypeButtonContoured typeButtonContoured;

  const PlatinumButtonContoured({
    Key? key,
    this.onPressed,
    required this.data,
    required this.typeButtonContoured,
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
            color: typeButtonContoured == TypeButtonContoured.primary
                ? color
                : Colors.white,
          ),
        ),
        child: Text(
          data,
          style: TextStyle(
            color: typeButtonContoured == TypeButtonContoured.primary
                ? color
                : Colors.white,
          ),
        ),
      ),
    );
  }
}
