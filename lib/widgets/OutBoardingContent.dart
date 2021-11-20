import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutBoardingContent extends StatelessWidget {
  final
  String mainText;
  String subText;

  //final Color pageColor;

  OutBoardingContent({
   required this.mainText, required this.subText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         SizedBox(height: 50.h),
        Text(
          mainText,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontSize: 20.sp,
            color: Colors.black87,
            fontFamily: 'BalsamiqSans',
          ),
        ),
        Text(
          subText,
          textAlign: TextAlign.center,
          style:  TextStyle(
            fontSize: 16.sp,
            color: Colors.black87,
            fontFamily: 'BalsamiqSans',
          ),
        ),
      ],
    );
  }
}