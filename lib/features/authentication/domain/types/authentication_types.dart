import 'package:either_dart/either.dart';

import '../entities/user_entity.dart';
import '../failures/login_user_failure.dart';

typedef LoginUserType = Future<Either<LoginUserFailure, UserEntity>>;
