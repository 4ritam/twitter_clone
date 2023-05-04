import 'package:appwrite/models.dart';
import 'package:twitter/core/typedefs.dart';

abstract class AuthAPIInterface {
  FutureEither<User> signup({
    required String username,
    required String password,
  });
}
