import 'package:flutter/material.dart';

import '../../../../core/extensions/format_currency_extension.dart';
import '../../../../core/platinum/spacing/platinum_padding.dart';
import 'evaluation_widget.dart';

class BookDetailsInformationFooterWidget extends StatelessWidget {
  final String title;
  final String author;
  final double price;
  final int evaluation;

  const BookDetailsInformationFooterWidget({
    Key? key,
    required this.title,
    required this.author,
    required this.price,
    required this.evaluation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: 1,
        ),
        const SizedBox(
          height: PlatinumPadding.iv,
        ),
        Text(
          author,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
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
            fontSize: 17,
            fontWeight: FontWeight.normal,
            overflow: TextOverflow.ellipsis,
            color: Colors.green,
          ),
        ),
        const SizedBox(
          height: PlatinumPadding.xii,
        ),
        EvaluationWidget(
          evaluation: evaluation,
        ),
      ],
    );
  }
}
