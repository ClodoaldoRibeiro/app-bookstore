import '../repositories/get_book_suggestion_repository.dart';
import '../types/home_types.dart';
import 'get_book_suggestion_usecase.dart';

class GetBookSuggestionUsecaseImpl implements GetBookSuggestionUsecase {
  final GetBookSuggestionRepository _getBookSuggestionRepository;

  const GetBookSuggestionUsecaseImpl({
    required GetBookSuggestionRepository getBookSuggestionRepository,
  }) : _getBookSuggestionRepository = getBookSuggestionRepository;

  @override
  BookSuggestionType call() {
    return _getBookSuggestionRepository.call();
  }
}
