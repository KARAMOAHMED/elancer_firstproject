import 'package:elancer_firstproject/widgets/AppStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppbarWidget extends StatelessWidget {
  AppbarWidget({ required this.text});

  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, top: 10, left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/logo3-removebg-preview.png',
            height: 120.h,
            width: 120.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [

              Text( text ,

              )
            ],
          )
        ],
      ),
    );
  }
}
