
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class GestureDetect extends StatelessWidget {
  GestureDetect(
      {required this.textTitle,
        required this.imageName,
        required this.pageNav,
        this.containerHeight = 120,
        this.containerWidth = 600,
        this.borderCircle = 50,
        this.containerPadding = 15,
      });

  String textTitle;
  String imageName;
  String pageNav;
  double containerWidth;
  double containerHeight;
  double borderCircle;
  double containerPadding;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, pageNav);
      },
      child: Container(
        padding: EdgeInsets.all(containerPadding),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              width: containerWidth,
              height: containerHeight,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(borderCircle),
                child: Image(image: AssetImage(imageName), fit: BoxFit.cover),
              ),
            ),
            Text(
              textTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xFFFFBF00),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}