import 'package:dacs3/screens/courses/my_course_list.dart';
import 'package:dacs3/screens/home/widget/bottombar_item.dart';
import 'package:dacs3/screens/home/widget/category_list.dart';
import 'package:dacs3/screens/home/widget/course_list.dart';
import 'package:dacs3/screens/home/widget/header.dart';
import 'package:dacs3/screens/home/widget/feature_course.dart';
import 'package:dacs3/screens/home/widget/lecture_list.dart';
import 'package:dacs3/screens/home/widget/offer.dart';
import 'package:dacs3/screens/home/widget/title.dart';
import 'package:dacs3/screens/search/explore.dart';
import 'package:flutter/material.dart';


class CourseHome extends StatefulWidget {
  const CourseHome({super.key});

  @override
  State<CourseHome> createState() => _BottomOptionState();
}

class _BottomOptionState extends State<CourseHome> {
  int activePageIndex = 0;

  void onPageIndexChange(int index) {
    setState(() {
      activePageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 55,
        padding: EdgeInsets.fromLTRB(20, 10, 25, 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black87.withOpacity(.1),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomBarItem(
              isActive: activePageIndex == 0,
              icon: "assets/icons/home.svg",
              onTap: () {
                onPageIndexChange(0);
              },
            ),
            BottomBarItem(
              isActive: activePageIndex == 1,
              icon: "assets/icons/search.svg",
              onTap: () {
                onPageIndexChange(1);
              },
            ),
            BottomBarItem(
              isActive: activePageIndex == 2,
              icon: "assets/icons/play.svg",
              onTap: () {
                onPageIndexChange(2);
              },
            ),
            BottomBarItem(
              isActive: activePageIndex == 3,
              icon: "assets/icons/chat.svg",
              onTap: () {
                onPageIndexChange(3);
              },
            ),
            BottomBarItem(
              isActive: activePageIndex == 4,
              icon: "assets/icons/profile.svg",
              onTap: () {
                onPageIndexChange(4);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildBody() {
    List<Map<String, dynamic>> tabItems = [
      {
        "icon": "assets/icons/home.svg",
        "page": SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: const Column(
                    children: [
                      Header(),
                      TitleItem(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Offers(),
                      const LectureList(),
                      const FeatureCourses(),
                      const CategoryList(),
                      const CourseList(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      },
      {
        "icon": "assets/icons/search.svg",
        "page": const ExplorePage(),
      },
      {
        "icon": "assets/icons/play.svg",
        "page": const MyCourseList(),
      },
      {
        "icon": "assets/icons/chat.svg",
        "page": const Center(
          child: Text("Chat"),
        ),
      },
      {
        "icon": "assets/icons/profile.svg",
        "page": const Center(
          child: Text("Profile"),
        ),
      },
    ];

    return IndexedStack(
      index: activePageIndex,
      children: List.generate(
        tabItems.length,
            (index) => tabItems[index]["page"],
      ),
    );
  }
}