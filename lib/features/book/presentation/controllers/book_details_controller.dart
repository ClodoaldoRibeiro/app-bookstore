import 'package:mobx/mobx.dart';

part 'book_details_controller.g.dart';

// ignore: library_private_types_in_public_api
class BookDetailsController = _BookDetailsController
    with _$BookDetailsController;

abstract class _BookDetailsController with Store {
  @computed
  bool get isValidForm {
    return true;
  }
}
