import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dacs3/global.dart';
import '../../../common/api/course_api.dart';
import '../../../common/entities/course.dart';

part 'home_controller.g.dart';

@riverpod
class HomeCourseList extends _$HomeCourseList{
  Future<List<CourseItem>?> _fetchCourseList() async{
    var result = await CourseAPI.courseList();
    if(result.code==200){
      return result.data;
    }
    return null;
  }

  @override
  FutureOr<List<CourseItem>?> build() async{
    return _fetchCourseList();
  }
}