import 'package:dacs3/component/bottom_option.dart';
import 'package:dacs3/constants.dart';
import 'package:dacs3/screens/home/widget/category_list.dart';
import 'package:dacs3/screens/home/widget/course_list.dart';
import 'package:dacs3/screens/home/widget/header.dart';
import 'package:dacs3/screens/home/widget/lecture_list.dart';
import 'package:dacs3/screens/home/widget/offer.dart';
import 'package:dacs3/screens/home/widget/feature_course.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../themes/font_family.dart';

class CourseHome extends StatelessWidget{
  const CourseHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: const Header()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Offers(),
                        const LectureList(),
                        const FeatureCourses(),
                        const CategoryList(),
                        const CourseList()
                      ],
                    ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomOption(
        selectedIndex: 1,
      ),
    );
  }


}