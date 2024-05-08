import 'package:dacs3/constants.dart';
import 'package:dacs3/model/course.dart';
import 'package:dacs3/model/section.dart';
import 'package:dacs3/screens/details/widget/favorite_option.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';


class CourseDetails extends StatefulWidget {
  const CourseDetails({super.key, required this.course});

  final Course course;



  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      title: Text(
          "Detail",
        style: TextStyle(color: textColor),
      ),
      iconTheme: IconThemeData(color: textColor),
    );
  }

  Widget buildBody(){
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10, 5, 10, 15),
      child: Column(
        children: [
          ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Image.asset(widget.course.thumbnailUrl)
            ),
          SizedBox(height: 5,),
          getInfo(),
          getLesson()
        ],
      ),
    );
  }
  Widget getInfo(){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.course.title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: textColor),
            ),
            FavoriteOption(course: widget.course),
          ],
          ),
          Row(
            children: [
              getAttribute(Icons.play_circle_outline, '${widget.course.lessonNo} Lessons', Colors.grey),
              const SizedBox(
                width: 10,
              ),
              getAttribute(Icons.access_time, widget.course.duration, Colors.grey),
              const SizedBox(
                width: 15,
              ),
              getAttribute(Icons.star, '${widget.course.rate}', Colors.yellow),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Course",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
              SizedBox(
                height: 5,
              ),
              ReadMoreText(
                widget.course.description,
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: "Show more",
                trimExpandedText: "Show less",
                moreStyle: const TextStyle(
                    color: kBlueColor,
                    fontWeight: FontWeight.bold
                ),
                lessStyle: const TextStyle(
                    color: kBlueColor,
                    fontWeight: FontWeight.bold
                ),
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                ),
              ),
              Text(
                "Lesson List",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: textColor,
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          )

        ],
      ),
    );
  }

  Widget getLesson() {
    return Column(
      children: List.generate(widget.course.sections.length, (index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    widget.course.thumbnailUrl,
                    width: 120,
                    height: 65,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.course.sections[index].name),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(
                            Icons.schedule_outlined,
                            color: Colors.grey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                              widget.course.sections[index].time,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Icon(Icons.arrow_forward_ios_rounded)
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget getAttribute(IconData icon, String info, Color color){
    var greyTextStyle = const TextStyle(fontSize: 10, color: Colors.grey);
    return Row(
      children: [
        Icon(
          icon,
          size: 15,
        color: color,),
        SizedBox(
          width: 5,
        ),
        Text(info,
          style: greyTextStyle,
        )
      ],
    );
  }
}
