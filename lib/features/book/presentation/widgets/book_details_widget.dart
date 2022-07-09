import 'package:flutter/cupertino.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../domain/entities/book_entity.dart';
import 'book_details_information_footer_widget.dart';

class BookDetailsWidget extends StatelessWidget {
  final BookEntity bookEntity;

  const BookDetailsWidget({super.key, required this.bookEntity});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 380,
            child: Image.network(
              bookEntity.urlCover,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PlatinumPadding.xxxii,
              vertical: PlatinumPadding.xvi,
            ),
            child: BookDetailsInformationFooterWidget(
              title: bookEntity.title,
              author: bookEntity.author,
              price: bookEntity.price,
              evaluation: bookEntity.evaluation,
            ),
          ),
          const SizedBox(
            height: PlatinumPadding.xvi,
          ),
        ],
      ),
    );
  }
}
