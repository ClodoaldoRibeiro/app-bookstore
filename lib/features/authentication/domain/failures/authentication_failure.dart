import '../../../../core/failures/failure.dart';

abstract class AuthenticationFailure extends Failure {
  const AuthenticationFailure({
    String? message,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          stackTrace: stackTrace,
        );
}
