import 'package:dacs3/model/course.dart';
import 'package:dacs3/model/lecture.dart';

class LectureArgument{
  final Lecture _lecture;

  LectureArgument(this._lecture);

  Lecture get lecture => _lecture;
}