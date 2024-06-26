import 'package:dacs3/model/course.dart';

import '../model/my_course.dart';

class MyCourseDataProvider{
  static final List<MyCourse> _myCourses = [];

  static void addCourse(Course course){
    _myCourses.add(MyCourse(course));
  }

  static void addAllCourse(List<Course> courses){
    for(var course in courses){
      _myCourses.add(MyCourse(course));
    }
  }

  static List<MyCourse> get myCourses => _myCourses;
}