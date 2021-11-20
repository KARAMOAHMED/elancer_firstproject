import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class out_boarding_indicator extends StatelessWidget {
  final double marginEnd;
  final bool selected;

  out_boarding_indicator({this.marginEnd = 0, required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: selected ? Color(0xFFE2BA45) : Colors.grey,
          borderRadius: BorderRadius.circular(10.r)
      ),
      margin: EdgeInsetsDirectional.only(end: marginEnd),
      height: 5.h,
      width: 23.w,
    );
  }
}