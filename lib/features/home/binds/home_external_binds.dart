import 'package:flutter_modular/flutter_modular.dart';

import '../../../core/services/api/mocks/login_user_service_mock.dart';
import '../data/datasources/get_book_suggestion_datasource.dart';
import '../external/datasources/get_book_suggestion_datasource_impl.dart';
import '../external/mappers/book_model_mapper.dart';

abstract class HomeExternalBinds {
  static List<Bind<Object>> binds = [
    // Mappers
    Bind.singleton(
      (i) {
        return BookModelMapper();
      },
      export: true,
    ),

    // Datasources
    Bind.singleton<GetBookSuggestionDatasource>(
      (i) {
        return GetBookSuggestionDatasourceImpl(
          apiService: LoginUserServiceMock(),
          bookModelMapper: i.get(),
        );
      },
      export: true,
    ),
  ];
}
