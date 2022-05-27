import 'package:flutter/material.dart';

import '../spacing/platinum_padding.dart';

class PlatinumButtonLink extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final String textHighlighted;

  const PlatinumButtonLink({
    Key? key,
    required this.text,
    required this.textHighlighted,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(PlatinumPadding.viii),
          ),
        ),
      ),
      child: RichText(
        text: TextSpan(
          text: text,
          style: const TextStyle(
            color: Colors.grey,
          ),
          children: <InlineSpan>[
            TextSpan(
              text: textHighlighted,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
