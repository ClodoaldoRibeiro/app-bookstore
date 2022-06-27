class AuthenticationRoutes {
  // Module route name
  static const String authenticationModuleRoute = '/authentication';

  // Initial authentication Screen
  static const String authenticationScreenRoute = '/';
  static const String toAuthenticationScreenInitialRoute =
      '$authenticationModuleRoute$authenticationScreenRoute';

  // SignUp screen router
  static const String authenticationSignUpScreenRoute = '/sign_up';
  static const String toAuthenticationSignUpScreenRoute =
      '$authenticationModuleRoute$authenticationSignUpScreenRoute';
}
