import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../core/platinum/components/platinum_loading.dart';
import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../core/platinum/spacing/platinum_size.dart';
import '../controllers/book_suggestion_controller.dart';
import '../controllers/book_suggestion_current_state.dart';
import '../screens/home_sentences.dart';
import 'card_book_widget.dart';

class BookSuggestionListWidget extends StatefulWidget {
  final BookSuggestionController bookSuggestionController;

  const BookSuggestionListWidget({
    Key? key,
    required this.bookSuggestionController,
  }) : super(key: key);

  @override
  State<BookSuggestionListWidget> createState() =>
      _BookSuggestionListWidgetState();
}

class _BookSuggestionListWidgetState extends State<BookSuggestionListWidget> {
  @override
  void initState() {
    super.initState();

    widget.bookSuggestionController.bookSuggestion();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        if (widget.bookSuggestionController.state
            is LoadingBookSuggestionCurrentState) {
          return const PlatinumLoading(
            message: HomeSentences.loadingData,
          );
        }

        if (widget.bookSuggestionController.state
            is ErrorBookSuggestionCurrentState) {
          return SizedBox(
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: widget.bookSuggestionController.bookSuggestion,
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

        if (widget.bookSuggestionController.state
            is LoadedBookSuggestionCurrentState) {
          final bookEntityList = (widget.bookSuggestionController.state
                  as LoadedBookSuggestionCurrentState)
              .bookEntityList;

          return SizedBox(
            height: 320,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: PlatinumPadding.xvi,
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CardBookWidget(
                  bookEntity: bookEntityList[index],
                  onTap: () {},
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: PlatinumPadding.xii,
                );
              },
              itemCount: bookEntityList.length,
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
