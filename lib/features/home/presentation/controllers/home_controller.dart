import 'package:mobx/mobx.dart';

import '../../../authentication/presentation/controllers/session_controller.dart';
import 'book_suggestion_controller.dart';

part 'home_controller.g.dart';

// ignore: library_private_types_in_public_api
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final SessionController sesseionController;
  final BookSuggestionController bookSuggestionController;

  _HomeController({
    required this.sesseionController,
    required this.bookSuggestionController,
  });

  //  void authenticate() async {
  //   loginCurrentState = loginCurrentState.loadingLoginCurrentState();

  //   final loginUserUsecaseCallback = await loginUserUsecase.call(
  //     userName: userName,
  //     password: password,
  //   );

  //   loginUserUsecaseCallback.fold(
  //     (loginFailure) {
  //       loginCurrentState = loginCurrentState.errorLoginCurrentState();
  //     },
  //     (userSession) {
  //       sesseionController.configureLoggedUser(
  //         userEntity: userSession,
  //       );

  //       loginCurrentState = loginCurrentState.loadedLoginCurrentState();
  //     },
  //   );
  // }
}
