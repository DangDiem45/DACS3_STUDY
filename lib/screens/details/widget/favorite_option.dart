import 'package:dacs3/model/course.dart';
import 'package:flutter/material.dart';

class FavoriteOption extends StatefulWidget {
  const FavoriteOption({super.key, required this.course});

  final Course course;
  @override
  State<FavoriteOption> createState() => _FavoriteOptionState();
}

class _FavoriteOptionState extends State<FavoriteOption> {

  bool isFavorite = false;

  void initState(){
    super.initState();

    isFavorite = widget.course.isFavorite;
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        isFavorite = !isFavorite;
        widget.course.isFavorite = isFavorite;
      });

    }, icon: Icon(
        isFavorite? Icons.favorite : Icons.favorite_border,
      color: Colors.pink,
    ));
  }
}
