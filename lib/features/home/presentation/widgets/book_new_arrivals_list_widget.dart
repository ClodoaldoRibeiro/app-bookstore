import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/platinum/components/platinum_loading.dart';
import '../../../../core/platinum/spacing/platinum_padding.dart';
import '../../../../core/platinum/spacing/platinum_size.dart';
import '../../../../routes/routes.dart';
import '../controllers/book_new_arrivals_controller.dart';
import '../controllers/book_new_arrivals_current_state.dart';
import '../screens/home_sentences.dart';
import 'card_book_widget.dart';
import 'retry_button_widget.dart';

class BookNewArrivalsListWidget extends StatefulWidget {
  final BookNewArrivalsController bookNewArrivalsController;

  const BookNewArrivalsListWidget({
    Key? key,
    required this.bookNewArrivalsController,
  }) : super(key: key);

  @override
  State<BookNewArrivalsListWidget> createState() =>
      _BookNewArrivalsListWidgetState();
}

class _BookNewArrivalsListWidgetState extends State<BookNewArrivalsListWidget> {
  @override
  void initState() {
    super.initState();

    widget.bookNewArrivalsController.bookNewArrivals();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(PlatinumPadding.xvi),
          child: Text(
            HomeSentences.newArrivals,
            style: TextStyle(
              fontSize: PlatinumSize.h2,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Observer(
          builder: (context) {
            if (widget.bookNewArrivalsController.state
                is LoadingBookNewArrivalsCurrentState) {
              return const PlatinumLoading(
                message: HomeSentences.loadingData,
              );
            }

            if (widget.bookNewArrivalsController.state
                is ErrorBookNewArrivalsCurrentState) {
              return RetryButtonWidget(
                onPressed: widget.bookNewArrivalsController.bookNewArrivals,
              );
            }

            if (widget.bookNewArrivalsController.state
                is LoadedBookNewArrivalsCurrentState) {
              final bookEntityList = (widget.bookNewArrivalsController.state
                      as LoadedBookNewArrivalsCurrentState)
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
        ),
      ],
    );
  }
}
