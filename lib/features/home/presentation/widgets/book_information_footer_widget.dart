import 'package:flutter/material.dart';

import '../../../../core/extensions/format_currency_extension.dart';
import '../../../../core/platinum/spacing/platinum_padding.dart';

class BookInformationFooterWidget extends StatelessWidget {
  final String title;
  final String author;
  final double price;

  const BookInformationFooterWidget({
    Key? key,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.clip,
          ),
          maxLines: 1,
        ),
        const SizedBox(
          height: PlatinumPadding.iv,
        ),
        Text(
          author,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.clip,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: PlatinumPadding.iv,
        ),
        Text(
          price.obterReal(
            value: price,
          ),
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.clip,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
