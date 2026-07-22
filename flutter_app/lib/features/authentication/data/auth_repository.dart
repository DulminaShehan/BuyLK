class AuthRepository {
  Future<Map<String, dynamic>> login(
      {required String email, required String password}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return {
      'token': 'demo-token',
      'user': {'email': email, 'role': 'buyer'}
    };
  }

  Future<Map<String, dynamic>> register(
      {required String fullName,
      required String email,
      required String password}) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return {
      'token': 'demo-token',
      'user': {'fullName': fullName, 'email': email, 'role': 'buyer'}
    };
  }
}
