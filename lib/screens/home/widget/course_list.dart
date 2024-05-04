import 'package:dacs3/data_provider/course_data_provider.dart';
import 'package:dacs3/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  const CourseList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: CourseDataProvider.courseList.map((course){
          return CourseItem(course: course);
        }).toList(),
    );
  }
}
