import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:task_manager/features/sign_in/data/repos/sign_in_repo.dart';

class SignInRepoImpl extends SignInRepo {
  @override
  Future<void> signIn(String email, String password1) async {
    final String username = email;
    final String password = password1;

    final body = {
      'username': username,
      'password': password,
      'expiresInMins': 30, // optional, defaults to 60
    };

    final response = await http.post(
      Uri.parse('https://dummyjson.com/auth/login'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      final token = responseBody['token'];

      // Save the token to local storage or use it to authenticate the user
      print('Login successful! Token: $token');
    } else {
      print('Login failed: ${response.statusCode}');
    }
  }
}
