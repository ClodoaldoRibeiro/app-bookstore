import 'package:mobx/mobx.dart';

import '../../domain/usecases/get_book_new_arrivals_usecase.dart';
import 'book_new_arrivals_current_state.dart';

part 'book_new_arrivals_controller.g.dart';

// ignore: library_private_types_in_public_api
class BookNewArrivalsController = _BookNewArrivalsController
    with _$BookNewArrivalsController;

abstract class _BookNewArrivalsController with Store {
  final GetBookNewArrivalsUsecase getBookNewArrivalsUsecase;

  _BookNewArrivalsController({
    required this.getBookNewArrivalsUsecase,
  });

  @observable
  BookNewArrivalsCurrentState state = InitialBookNewArrivalsCurrentState();

  void bookNewArrivals() async {
    state = state.loadingBookNewArrivalsCurrentState();

    final getBookNewArrivalsCallback = await getBookNewArrivalsUsecase.call();

    getBookNewArrivalsCallback.fold(
      (bookSuggestionFailure) {
        state = state.errorBookNewArrivalsCurrentState();
      },
      (bookEntityList) {
        state = state.loadedBookNewArrivalsCurrentState(
          bookEntityList: bookEntityList,
        );
      },
    );
  }
}
