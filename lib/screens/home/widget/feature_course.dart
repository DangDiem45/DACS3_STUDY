import 'package:dacs3/data_provider/course_data_provider.dart';
import 'package:dacs3/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

import '../../../model/course.dart';

class FeatureCourses extends StatelessWidget {
  const FeatureCourses({super.key});

  @override
  Widget build(BuildContext context) {
    List<Course> featuredCourseList = [
      CourseDataProvider.courseList[9],
      CourseDataProvider.courseList[0],
      CourseDataProvider.courseList[2],
      CourseDataProvider.courseList[10],
      CourseDataProvider.courseList[5],
    ];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Feature Courses",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800),
            ),

            InkWell(
              onTap: () {},
              child: const Text("See All",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 165,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredCourseList.length,
            itemBuilder: (context, index) {
              Course course = featuredCourseList[index];

              return CourseItem(course: course);
            },
          ),
        )
      ],
    );
  }
}
