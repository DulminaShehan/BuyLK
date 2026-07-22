import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:buylk/features/authentication/data/auth_repository.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository());

final authControllerProvider = Provider<AuthController>((ref) {
  return AuthController(ref.read(authRepositoryProvider));
});

class AuthController {
  final AuthRepository _repository;

  AuthController(this._repository);

  Future<Map<String, dynamic>> login(
      {required String email, required String password}) async {
    return _repository.login(email: email, password: password);
  }

  Future<Map<String, dynamic>> register(
      {required String fullName,
      required String email,
      required String password}) async {
    return _repository.register(
        fullName: fullName, email: email, password: password);
  }
}
