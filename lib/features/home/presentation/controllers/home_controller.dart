import 'package:mobx/mobx.dart';

import '../../../authentication/presentation/controllers/session_controller.dart';

part 'home_controller.g.dart';

// ignore: library_private_types_in_public_api
class HomeController = _HomeController with _$HomeController;

abstract class _HomeController with Store {
  final SessionController sesseionController;

  _HomeController({
    required this.sesseionController,
  });
}
