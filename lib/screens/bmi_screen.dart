import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

bool isMale = true;
double height = 120.h;
int weight = 40;
int age = 20;

class _BmiScreenState extends State<BmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, '/home_screen');
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF09192A),
        title:  Text(
          AppLocalizations.of(context)!.bmiCalculator,
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF09192A),
        child: Column(
          children: [
            Container(
              child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 20.h, bottom: 40.h, left: 30.w, right: 20.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMale = true;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: isMale
                                      ? const Color(0xFF2F4457)
                                      : const Color(0xFFC6C8CB),
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                   Image(
                                    image: AssetImage('images/male.png'),
                                    height: 70.h,
                                    width: 70.w,
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.male,
                                    style: TextStyle(
                                        fontSize: 26.sp, fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: 20.h, bottom: 40.h, left: 20.w, right: 30.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: !isMale ? Colors.blue : Colors.grey[400],
                                  borderRadius: BorderRadius.circular(20.r)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:  [
                                   Image(
                                    image: AssetImage('images/female.png'),
                                    height: 70.h,
                                    width: 70.w,
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Text(
                                    AppLocalizations.of(context)!.female,
                                    style: TextStyle(
                                        fontSize: 26.sp, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.h, left: 30.w, right: 30.w),
              child: Container(
                padding: EdgeInsets.all(12.r),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.r),
                  color: Colors.grey[400],
                ),
                child: Column(
                  children: [
                     SizedBox(
                      height: 35.h,
                    ),
                     Text(
                       AppLocalizations.of(context)!.h,
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                     SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style:  TextStyle(
                              fontSize: 30.sp, fontWeight: FontWeight.bold),
                        ),
                         Text(
                          'CM',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.h,
                        min: 80.h,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Expanded(
                child: Container(
                  // color: Colors.grey[300],
                  width: double.infinity,
                  child: Container(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20.r),
                            ),
                            child: Column(
                              children: [
                                 Text(
                                   AppLocalizations.of(context)!.weight,
                                   style: TextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$weight',
                                  style:  TextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      heroTag: 'weight-',
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      heroTag: 'weight+',
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                         SizedBox(
                          width: 20.w,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[400],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                 Text(
                                   AppLocalizations.of(context)!.age,
                                   style: TextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '$age',
                                  style:  TextStyle(
                                      fontSize: 26.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age--;
                                        });
                                      },
                                      heroTag: 'age-',
                                      mini: true,
                                      child: Icon(Icons.remove),
                                    ),
                                    FloatingActionButton(
                                      onPressed: () {
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      heroTag: 'age+',
                                      mini: true,
                                      child: Icon(Icons.add),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            MaterialButton(
              padding: EdgeInsets.only(left: 35.w, right: 35.w),
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.r),
                ),
              ),
              color: Color(0xFFE2BA45),
              onPressed: () {
                Provider.of <BMIResultProvider>(context , listen: false).pmiCalc(age, weight);
              },
              child:  Text(
                AppLocalizations.of(context)!.calculate,
                style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
              ),
            ),
            SizedBox(height: 10.h,),
            Center(
              child: Text(' The BMI is : ${Provider.of <BMIResultProvider>(context , listen: false).result}',style:TextStyle(fontSize: 20.sp, color:Colors.white)),
            ),
          ],
        ),
      ),
    );
  }


}

class BMIResultProvider extends ChangeNotifier {
  double result = 0.0;

  pmiCalc(int age, int weight) {

    result = weight / pow(height / 100, 2);
    notifyListeners();
  }
}