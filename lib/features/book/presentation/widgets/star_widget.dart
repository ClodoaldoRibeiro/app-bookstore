import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  const StarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.star_outlined,
      color: Colors.yellow,
      size: 25,
    );
  }
}
