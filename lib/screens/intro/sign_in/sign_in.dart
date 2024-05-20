
import 'package:dacs3/screens/home/course_home.dart';
import 'package:dacs3/screens/intro/sign_in/sign_up.dart';
import 'package:dacs3/screens/intro/sign_in/widget/input_widget.dart';
import 'package:flutter/material.dart';

import '../../../controllers/authentication.dart';
import '../intro_screen.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isEmailValid(String email) {
      final RegExp emailRegExp = RegExp(
        r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
        caseSensitive: false,
        multiLine: false,
      );
      return emailRegExp.hasMatch(email);
    }
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            //We put all our textfield to a form to be controlled and not allow as empty
            child: Form(
              child: Column(
                children: [
                  //Username field

                  //Before we show the image, after we copied the image we need to define the location in pubspec.yaml
                  Image.asset(
                    "assets/login.png",
                    width: 210,
                  ),
                  const SizedBox(height: 15),
                  InputWidget(
                    hintText: "Email",
                    controller: emailController,
                    obscureText: false,
                  ),

                  //Password field
                  InputWidget(
                      hintText: "Password",
                      controller: passwordController,
                      obscureText: true
                  ),

                  //Login button
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple),
                    child: TextButton(
                        onPressed: () {
                          // Navigator.push(context, MaterialPageRoute(builder: (context)=> IntroScreen()));
                          if (emailController.text.isEmpty || passwordController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                              content: Text('Please enter name and password'),
                              ),
                              );
                              return;
                              }
                          if (!isEmailValid(emailController.text)) {
                              // Hiển thị thông báo lỗi về địa chỉ email không hợp lệ
                              ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Invalid email'),
                            ),
                          );
                          return;
                          }
                          AuthenticationController.login(
                          context: context,
                          email: emailController.text,
                          password: passwordController.text,
                        );


                      },
                        child: const Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  //Sign up button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                          onPressed: () {
                            //Navigate to sign up
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const RegisterScreen()));
                          },
                          child: const Text("SIGN UP"))
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
