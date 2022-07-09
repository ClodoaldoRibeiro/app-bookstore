import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/platinum/components/platinum_loading.dart';
import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../routes/routes.dart';
import '../controllers/book_suggestion_controller.dart';
import '../controllers/book_suggestion_current_state.dart';
import '../screens/home_sentences.dart';
import 'card_book_widget.dart';
import 'retry_button_widget.dart';

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
          return RetryButtonWidget(
            onPressed: widget.bookSuggestionController.bookSuggestion,
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
                  onTap: () => Modular.to.pushNamed(
                    BookRoutes.toBookScreenInitialRoute,
                    arguments: bookEntityList[index],
                  ),
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
