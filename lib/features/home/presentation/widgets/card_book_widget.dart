import 'package:flutter/material.dart';

import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../book/domain/entities/book_entity.dart';
import 'book_information_footer_widget.dart';

class CardBookWidget extends StatelessWidget {
  final BookEntity bookEntity;
  final GestureTapCallback onTap;

  const CardBookWidget({
    Key? key,
    required this.bookEntity,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 310,
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
              child: Image.network(
                bookEntity.urlCover,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(PlatinumPadding.iv),
              child: BookInformationFooterWidget(
                title: bookEntity.title,
                author: bookEntity.author,
                price: bookEntity.price,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
