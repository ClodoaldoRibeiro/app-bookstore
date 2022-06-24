import 'authentication_failure.dart';

class RegisterUserFailure extends AuthenticationFailure {
  const RegisterUserFailure({
    String? message,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          stackTrace: stackTrace,
        );
}
