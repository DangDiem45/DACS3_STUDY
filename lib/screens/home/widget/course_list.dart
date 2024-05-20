import 'package:dacs3/data_provider/course_data_provider.dart';
import 'package:dacs3/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/home_controller.dart';

class CourseList extends StatelessWidget {
  final WidgetRef ref;
  const CourseList({super.key, required this.ref});

  @override
  Widget build(BuildContext context) {
    final courseState = ref.watch(homeCourseListProvider);
    return courseState.when(
      data: (data) {
        final courseList = CourseDataProvider.courseList;
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.98,
          ),
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemCount: courseList.length,
          itemBuilder: (context, index) {
            final course = courseList[index];
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CourseItem(course: course),
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) {
        print(error.toString());
        print(stackTrace.toString());
        return const Center(child: Text("Error loading data"));
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}