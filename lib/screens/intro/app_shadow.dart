import 'package:flutter/material.dart';

import '../../util/app_colors.dart';


BoxDecoration appBoxShadow({Color color = AppColors.primaryElement, double radius = 15, double sR=1, double bR=2}){
  return BoxDecoration(
      color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.6),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 1)
      )
    ]
  );
}