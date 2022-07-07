import 'package:flutter/material.dart';

import '../../../../core/platinum/spacing/platinum_size.dart';
import '../screens/home_sentences.dart';

class RetryButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  const RetryButtonWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          TextButton.icon(
            onPressed: onPressed,
            icon: const Icon(
              Icons.error_outlined,
              color: Colors.redAccent,
            ),
            label: const Text(
              HomeSentences.errorGettingSuggestions,
              style: TextStyle(
                fontSize: PlatinumSize.body,
              ),
            ),
          )
        ],
      ),
    );
  }
}
