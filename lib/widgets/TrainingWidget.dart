import 'package:elancer_firstproject/widgets/AppStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrainingWidget extends StatelessWidget {
  TrainingWidget(
      {required this.exerName,
      required this.imageName,
      this.borderCircle = 50,
      this.containerWidth = 500,
      this.containerMargin = 10});

  String exerName;
  String imageName;
  double borderCircle;
  double containerWidth;
  double containerMargin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          exerName,
          style: TextStyle(
              color: primaryColorDark,
              fontSize: 15.sp,
              fontWeight: FontWeight.bold),
        ),
        Container(
          width: 500.w,
          margin: EdgeInsets.all(containerMargin),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderCircle),
            child: Image(image: AssetImage(imageName), fit: BoxFit.cover),
          ),
        ),
      ],
    );
  }
}
