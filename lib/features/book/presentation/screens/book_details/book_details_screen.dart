import 'package:flutter/material.dart';

import '../../../../../core/platinum/components/platinum_button_full.dart';
import '../../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../domain/entities/book_entity.dart';
import '../../controllers/book_details_controller.dart';
import '../../widgets/book_details_widget.dart';
import '../../widgets/description_session_widget.dart';
import 'book_details_sentences.dart';

class BookDetailsScreen extends StatefulWidget {
  final BookEntity bookEntity;
  final BookDetailsController bookDetailsController;

  const BookDetailsScreen({
    Key? key,
    required this.bookDetailsController,
    required this.bookEntity,
  }) : super(key: key);

  @override
  State<BookDetailsScreen> createState() => BbooDdetailSscreenState();
}

class BbooDdetailSscreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: PlatinumPadding.xvi,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_rounded,
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
          PlatinumPadding.xvi,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BookDetailsWidget(
              bookEntity: widget.bookEntity,
            ),
            const SizedBox(
              height: PlatinumPadding.xvi,
            ),
            DescriptionSessionWidget(
              title: BookDetailsSentences.aboutTheAuthor,
              description: widget.bookEntity.aboutAuthor,
            ),
            const SizedBox(
              height: PlatinumPadding.xxxii,
            ),
            DescriptionSessionWidget(
              title: BookDetailsSentences.overview,
              description: widget.bookEntity.description,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(PlatinumPadding.xvi),
        child: PlatinumButtonFull(
          data: BookDetailsSentences.buttonAddtoCart,
          typeButtonFull: TypeButtonFull.primary,
          onPressed: widget.bookDetailsController.isValidForm ? () {} : null,
        ),
      ),
    );
  }
}
