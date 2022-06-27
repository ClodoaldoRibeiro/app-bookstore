abstract class SignUpCurrentState {
  InitialSignUpCurrentState initialSignUpCurrentState() {
    return InitialSignUpCurrentState();
  }

  LoadingSignUpCurrentState loadingSignUpCurrentState() {
    return LoadingSignUpCurrentState();
  }

  ErrorSignUpCurrentState errorSignUpCurrentState() {
    return ErrorSignUpCurrentState();
  }

  LoadedSignUpCurrentState loadedSignUpCurrentState() {
    return LoadedSignUpCurrentState();
  }
}

class InitialSignUpCurrentState extends SignUpCurrentState {}

class LoadingSignUpCurrentState extends SignUpCurrentState {}

class ErrorSignUpCurrentState extends SignUpCurrentState {}

class LoadedSignUpCurrentState extends SignUpCurrentState {}
