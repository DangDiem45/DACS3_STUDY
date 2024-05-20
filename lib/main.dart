import 'package:dacs3/arguments/course_arguments.dart';
import 'package:dacs3/arguments/lecture_arguments.dart';
import 'package:dacs3/screens/details/course_details.dart';
import 'package:dacs3/screens/details/lecture_details.dart';
import 'package:dacs3/screens/home/course_home.dart';
import 'package:dacs3/screens/intro/intro_screen.dart';
import 'package:dacs3/screens/intro/welcome.dart';
import 'package:dacs3/util/route_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'global.dart';

Future<void> main() async {
  await Global.init();

  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
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
        RouteNames.intro: (context) => Welcome(),
        RouteNames.courseHome: (context) => const CourseHome(),
      },

      onGenerateRoute: (settings){
        if(settings.name == RouteNames.courseDetails){
            final args = settings.arguments as CourseArgument;
            return MaterialPageRoute(builder: (context) => CourseDetails(course: args.course));
        }
        if(settings.name == RouteNames.lectureDetails){
          final args = settings.arguments as LectureArgument;
          return MaterialPageRoute(builder: (context) => LectureDetail(lecture: args.lecture,));
        }
      },
    );
  }


}
