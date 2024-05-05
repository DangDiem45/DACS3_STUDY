
import 'package:dacs3/screens/home/course_home.dart';
import 'package:dacs3/screens/intro/sign_in/sign_in.dart';
import 'package:dacs3/screens/intro/text_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_shadow.dart';



Widget appOnboardingPage(
    PageController controller,
    {String imagePath = "assets/images/reading.png",
      String title = "",
      String subTitle = "",
      int index = 0,
      BuildContext? context,
      }){
  return Column(
    children: [
      Image.asset(
        imagePath,
        width: 250,
        height: 270,
        fit: BoxFit.fill,
      ),
      Container(
        margin: const EdgeInsets.only(top: 20),
        child: text24Normal(text: title),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: text16Normal(text: subTitle),
      ),
      _nextButton(index, controller, context),
    ],
  );
}

Widget _nextButton(int index, PageController controller, BuildContext? context) {
  return GestureDetector(
    onTap: () {
      if (index < 3) {
        controller.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        if (context != null) {
          Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const CourseHome(),
            ),
          );
        }
      }
    },
    child: Container(
      width: 250,
      height: 40,
      margin: const EdgeInsets.only(top: 40, left: 10, right: 10),
      decoration: appBoxShadow(),
      child: Center(
        child: text16Normal(
          text: "Next",
          color: Colors.white,
        ),
      ),
    ),
  );
}