import 'package:dacs3/common/entities/course.dart';
import 'package:dacs3/services/http_util.dart';

class CourseAPI{
  static Future<CourseListResponseEntity> courseList() async{
    var response = await HttpUtil().post(
      'api/courseList'
    );
    return CourseListResponseEntity.fromJson(response);
  }
}