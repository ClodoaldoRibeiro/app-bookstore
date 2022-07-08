import '../../../../core/failures/failure.dart';

abstract class HomeFailure extends Failure {
  const HomeFailure({
    String? message,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          stackTrace: stackTrace,
        );
}
