import '../../../../core/services/api/api_response.dart';
import '../../../../core/services/api/api_service.dart';
import '../../data/datasources/get_book_new_arrivals_datasource.dart';
import '../../data/models/book_model.dart';
import '../mappers/book_model_mapper.dart';

class GetBookNewArrivalsDatasourceImpl implements GetBookNewArrivalsDatasource {
  final ApiService _apiService;
  final BookModelMapper _bookModelMapper;

  const GetBookNewArrivalsDatasourceImpl({
    required ApiService apiService,
    required BookModelMapper bookModelMapper,
  })  : _apiService = apiService,
        _bookModelMapper = bookModelMapper;

  @override
  Future<List<BookModel>> call() async {
    const String path =
        'https://parseapi.back4app.com/classes/book-new_arrivals-mock';
    final ApiResponse<String> jsonResultData = await _apiService.get(
      path,
    );

    return _bookModelMapper.fromJson(
      bookJson: jsonResultData.data!,
    );
  }
}
