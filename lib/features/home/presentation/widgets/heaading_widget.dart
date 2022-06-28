import 'package:flutter/material.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../core/platinum/spacing/platinum_size.dart';

class HeaadingWidget extends StatelessWidget {
  final String name;

  const HeaadingWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: PlatinumPadding.xvi,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, $name',
            style: const TextStyle(
              fontSize: PlatinumSize.h3,
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: PlatinumPadding.iv,
          ),
          const Text(
            'What do you want to read today?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
