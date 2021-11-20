import 'package:elancer_firstproject/helpers/size_config.dart';
import 'package:elancer_firstproject/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.exit_to_app,
          ),
      ),
      body: Stack(

        alignment: Alignment.center,

        children: [
      Container(
      margin: const EdgeInsets.only(
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/front-girl-yoga-pose-muscles.jpg'),fit: BoxFit.cover),
      ),

    ),
    Container(
      margin:  EdgeInsets.only(
        bottom: 547.h,
      ),

      child: Text("Gym Hype",style: TextStyle(color: Colors.yellow,fontSize: 50.sp,fontWeight: FontWeight.w300),
      ),

),
          Container(
            margin:  EdgeInsets.only(
              top: 600.h,
              bottom: 156.h,
              right: 55.w,
              left: 55.w,
            ),

            child: Text("Get stronger, fitter and healthier every day!"
                "Embrace the balanced lifestyle",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w300),
            ),

          ),
          Container(
    margin:  EdgeInsets.only(
    top: 670.h,
    left: 28.w,
    right: 27.w),
            child: ElevatedButton(
              onPressed: () => LoginScreen(),
              child: Text('LOGIN',style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                  primary: Color(0xFFE2BA45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          )

    ],
      ),

    );
  }
}
