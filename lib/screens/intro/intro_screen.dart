import 'package:dacs3/constants.dart';
import 'package:flutter/material.dart';

import '../../util/route_names.dart';

class IntroScreen extends StatelessWidget{
  const IntroScreen({super.key}) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/intro/intro.png"),
          const SizedBox(
            height: 30,
          ),
          Text("Grow Your Skills",
            style: TextStyle(fontSize: 25, color: Colors.grey.shade900),
          ),
          const SizedBox(
            height: 20,
          ),
          Text("Choose your favorite & start learning",
            style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, RouteNames.courseHome);
          },
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
            ),
            child: Text(
              "Getting Started",
              style: TextStyle(
              color: Colors.white,
            ),// Đổi màu chữ thành màu trắng
            ),
          ),
        ],
      ),
    );
  }
  
  
}