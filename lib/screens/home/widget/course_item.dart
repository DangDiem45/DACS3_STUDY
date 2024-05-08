import 'package:dacs3/arguments/course_arguments.dart';
import 'package:dacs3/constants.dart';
import 'package:dacs3/model/course.dart';
import 'package:dacs3/util/route_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: InkWell(
            onTap: (){
              Navigator.pushNamed(
                  context,
                  RouteNames.courseDetails,
                  arguments: CourseArgument(course)
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(course.thumbnailUrl),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.title,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person,
                            color: kBlueColor),
                          const SizedBox(width: 3),
                          Text(
                            course.createdBy,
                            style: const TextStyle(fontSize: 8, color: kBlueColor),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 20,
                                color: kRatingColor,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                '${course.rate}',
                                style: const TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                          Text(
                            '\$${course.price}',
                            style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
