
import 'package:dacs3/controllers/authentication.dart';
import 'package:dacs3/screens/home/course_home.dart';
import 'package:dacs3/screens/intro/sign_in/sign_in.dart';
import 'package:dacs3/screens/intro/sign_in/widget/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../controller/register_controller.dart';
// import '../model/user.dart';
// import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthenticationController _authenticationController = Get.put(AuthenticationController());

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
      //SingleChildScrollView to have an scrol in the screen
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //We will copy the previous textfield we designed to avoid time consuming

                  Image.asset(
                    "assets/login.png",
                    width: 210,
                  ),

                  //As we assigned our controller to the textformfields

                  InputWidget(
                      hintText: "Username",
                      controller: nameController,
                      obscureText: false
                  ),

                  //Password field
                  InputWidget(
                      hintText: "Email",
                      controller: emailController,
                      obscureText: false
                  ),

                  //Confirm Password field
                  // Now we check whether password matches or not
                  InputWidget(
                      hintText: "Password",
                      controller: passwordController,
                      obscureText: true
                  ),

                  const SizedBox(height: 10),
                  //Login button
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * .9,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.deepPurple),
                    child: TextButton(
                        onPressed: () {
                          if (nameController.text.isEmpty || passwordController.text.isEmpty) {
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
                          AuthenticationController.register(
                              context: context,
                              name: nameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                          );


                        },
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),

                  //Sign up button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            //Navigate to sign up
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text("Login"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}


  // void _register() {
  //   String name = _nameController.text;
  //   String email = _emailController.text;
  //   String password = _passwordController.text;
  //   bool emailValid = RegExp(
  //       r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
  //       .hasMatch(email);
  //   // if (emailValid) {
  //   //   if (password == confirmPassword && password.isNotEmpty){
  //   //     onSuccess();
  //   //   }
  //   // }
  // }

  // void onSuccess() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text('Registration Successful'),
  //         content: Text('You have successfully registered.'),
  //         actions: <Widget>[
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //             child: Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  //
  // void onError(String errorMessage) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text('Registration Failed'),
  //         content: Text(errorMessage),
  //         actions: <Widget>[
  //           ElevatedButton(
  //             onPressed: () {
  //               Navigator.pop(context);
  //             },
  //             child: Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }






