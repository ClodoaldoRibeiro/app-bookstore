import 'authentication_failure.dart';

class LoginUserFailure extends AuthenticationFailure {
  const LoginUserFailure({
    String? message,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          stackTrace: stackTrace,
        );
}
