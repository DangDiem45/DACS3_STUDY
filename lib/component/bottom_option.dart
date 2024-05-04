import 'package:dacs3/constants.dart';
import 'package:flutter/material.dart';

class BottomOption extends StatelessWidget {
  const BottomOption({super.key, required this.selectedIndex});

  final int selectedIndex;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home, color: getSelectedColor(1),),
                    SizedBox(height: 3,),
                    Text("Home", style: TextStyle(
                        fontSize: 8,
                        color: getSelectedColor(1)
                    ),),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.search, color: getSelectedColor(2),),
                    SizedBox(height: 3,),
                    Text("Search", style: TextStyle(
                        fontSize: 8,
                        color: getSelectedColor(2)
                    ),),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite_border, color: getSelectedColor(3),),
                    SizedBox(height: 3,),
                    Text("My Courses", style: TextStyle(
                        fontSize: 8,
                        color: getSelectedColor(3)
                    ),),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.chat, color: getSelectedColor(4),),
                    SizedBox(height: 3,),
                    Text("Chat", style: TextStyle(
                        fontSize: 8,
                        color: getSelectedColor(4)
                    ),),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: (){

              },
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.people, color: getSelectedColor(3),),
                    SizedBox(height: 3,),
                    Text("Profile", style: TextStyle(
                        fontSize: 8,
                        color: getSelectedColor(3)
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color getSelectedColor(int optionIndex){
    return (selectedIndex == optionIndex)?kPrimaryColor:Colors.grey.shade800;
  }
}
