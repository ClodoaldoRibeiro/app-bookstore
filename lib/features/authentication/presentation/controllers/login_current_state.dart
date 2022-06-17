abstract class LoginCurrentState {
  InitialLoginCurrentState initialLoginCurrentState() {
    return InitialLoginCurrentState();
  }

  LoadingLoginCurrentState loadingLoginCurrentState() {
    return LoadingLoginCurrentState();
  }

  ErrorLoginCurrentState errorLoginCurrentState() {
    return ErrorLoginCurrentState();
  }

  LoadedLoginCurrentState loadedLoginCurrentState() {
    return LoadedLoginCurrentState();
  }
}

class InitialLoginCurrentState extends LoginCurrentState {}

class LoadingLoginCurrentState extends LoginCurrentState {}

class ErrorLoginCurrentState extends LoginCurrentState {}

class LoadedLoginCurrentState extends LoginCurrentState {}
