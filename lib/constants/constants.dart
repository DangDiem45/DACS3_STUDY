import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  static Future<String?> register({
    required String name,
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('http://192.168.181.2:80/api/register');

    try {
      final response = await http.post(
        url,
        body: {
          'name': name,
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {

        return null;
      } else {

        return 'Email already exists';
      }

    } catch (e) {

      return 'Connection error';
    }
  }

  static Future<String?> login({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('http://192.168.181.2:80/api/login');

    try {
      final response = await http.post(
        url,
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        // Login successful
        final responseData = jsonDecode(response.body);
        final token = responseData['token'];
        final user = responseData['user'];

        // Save the token and user data to local storage or session
        await _saveUserData(token, user);

        return null; // No error
      } else {
        // Login failed
        final responseData = jsonDecode(response.body);
        final errorMessage = responseData['message'];
        return errorMessage;
      }
    } catch (e) {
      // Connection error
      return 'Connection error';
    }
  }

  static Future<void> _saveUserData(String token, Map<String, dynamic> user) async {
    // Save the token and user data to local storage or session
    // For example, using shared_preferences package:
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
    await prefs.setString('user', jsonEncode(user));
  }
}