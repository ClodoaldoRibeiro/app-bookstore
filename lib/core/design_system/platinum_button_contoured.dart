import 'package:flutter/material.dart';

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
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
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
