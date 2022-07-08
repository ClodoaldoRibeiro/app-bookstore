import '../repositories/get_book_new_arrivals_repository.dart';
import '../types/home_types.dart';
import 'get_book_new_arrivals_usecase.dart';

class GetBookNewArrivalsUsecaseImpl implements GetBookNewArrivalsUsecase {
  final GetBookNewArrivalsRepository _getBookNewArrivalsRepository;

  const GetBookNewArrivalsUsecaseImpl({
    required GetBookNewArrivalsRepository getBookNewArrivalsRepository,
  }) : _getBookNewArrivalsRepository = getBookNewArrivalsRepository;

  @override
  BookNewArrivalsType call() {
    return _getBookNewArrivalsRepository.call();
  }
}
