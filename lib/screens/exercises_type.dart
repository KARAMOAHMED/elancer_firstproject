import 'package:elancer_firstproject/widgets/AppStyles.dart';
import 'package:elancer_firstproject/widgets/gesture_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ExercisesType extends StatefulWidget {
  const ExercisesType({Key? key}) : super(key: key);

  @override
  _ExercisesTypeState createState() => _ExercisesTypeState();
}

class _ExercisesTypeState extends State<ExercisesType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, '/home_screen');
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        toolbarHeight: 200.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          padding:
               EdgeInsets.only(bottom: 10.h, top: 10.h, left: 10.w, right: 10.w),
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
                   Text(
                  AppLocalizations.of(context)!.welcome,
                    style: TextStyle(color: primaryColorDark),
                  ),
                  Text(
                    AppLocalizations.of(context)!.choosewant,
                    style: TextStyle(fontSize: 15.sp, color: primaryColorDark),
                  )
                ],
              )
            ],
          ),
        ),
        // child:
      ),
      body: Stack(alignment: Alignment.center, children: [
        Container(
          margin: const EdgeInsets.only(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/front-girl-yoga-pose-muscles.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        SafeArea(
          child: Container(
            child: GridView(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
                GestureDetect(
                  textTitle:AppLocalizations.of(context)!.backexercises,
                  imageName: 'images/213.png',
                  pageNav: '/back_screen',
                ),
                GestureDetect(
                    textTitle:AppLocalizations.of(context)!.shoulderexercises,
                    imageName: 'images/213.png',
                    pageNav: '/shoulder_screen'),
                GestureDetect(
                    textTitle:AppLocalizations.of(context)!.legsexercises,
                    imageName: 'images/213.png',
                    pageNav: '/leg_screen'),
                GestureDetect(
                    textTitle:AppLocalizations.of(context)!.armsexercises,
                    imageName: 'images/213.png',
                    pageNav: '/arm_screen'),
                GestureDetect(
                    textTitle:AppLocalizations.of(context)!.chestexercises,
                    imageName: 'images/213.png',
                    pageNav: '/chest_excersices'),

              ],
            ),
          ),
        ),
      ]),
    );
  }
}
