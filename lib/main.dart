import 'package:dacs3/screens/home/course_home.dart';
import 'package:dacs3/screens/intro/intro_screen.dart';
import 'package:dacs3/util/route_names.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        RouteNames.intro: (context) => const IntroScreen(),
        RouteNames.courseHome: (context) => const CourseHome(),
      },
    );
  }


}
