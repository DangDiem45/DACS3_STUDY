
import 'package:dacs3/screens/home/course_home.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AuthenticationController {
  static Future register({
    required BuildContext context,
    required String name,
    required String email,
    required String password,
  }) async {
    final errorMessage = await AuthService.register(
      name: name,
      email: email,
      password: password,
    );

    if (errorMessage == null) {
      // Đăng ký thành công, chuyển hướng đến trang chủ hoặc hiển thị thông báo thành công
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CourseHome()),
      );
    } else {
      // Xử lý lỗi
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    }
  }

  static Future login({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    final errorMessage = await AuthService.login(
      email: email,
      password: password,
    );

    if (errorMessage == null) {
      // Login successful, navigate to home screen or display success message
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CourseHome()),
      );
    } else {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    }
  }
}