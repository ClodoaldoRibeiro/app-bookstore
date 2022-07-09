import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../core/platinum/spacing/platinum_size.dart';
import '../screens/book_details/book_details_sentences.dart';

class DescriptionSessionWidget extends StatelessWidget {
  final String title;
  final String description;

  const DescriptionSessionWidget({
    Key? key,
    required this.title,
    required this.description,
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
            fontSize: PlatinumSize.h3,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: PlatinumPadding.xvi,
        ),
        ReadMoreText(
          description,
          trimLines: 5,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: BookDetailsSentences.showMore,
          trimExpandedText: BookDetailsSentences.showLess,
          style: const TextStyle(
            fontSize: 14,
            wordSpacing: 2.0,
            letterSpacing: 1.5,
            height: 1.5,
          ),
          textAlign: TextAlign.justify,
        )
      ],
    );
  }
}
