import 'package:mobx/mobx.dart';

import '../../../authentication/presentation/controllers/session_controller.dart';
import 'book_new_arrivals_controller.dart';
import 'book_suggestion_controller.dart';

part 'home_controller.g.dart';

// ignore: library_private_types_in_public_api
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final SessionController sesseionController;
  final BookSuggestionController bookSuggestionController;
  final BookNewArrivalsController bookNewArrivalsController;

  _HomeController({
    required this.sesseionController,
    required this.bookSuggestionController,
    required this.bookNewArrivalsController,
  });
}
