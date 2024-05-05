
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/app_colors.dart';

Widget text24Normal({String text = "", Color color = AppColors.primaryText}){
  return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
      color: color,
      fontSize: 20,
      fontWeight: FontWeight.normal
  ),
  );
}

Widget text16Normal({String text = "", Color color = AppColors.primarySecondElementText}){
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.normal
    ),
  );
}
