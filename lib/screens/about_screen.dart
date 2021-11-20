import 'dart:ui';

import 'package:elancer_firstproject/widgets/AppStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(
          backgroundColor: Colors.transparent,

        leading: GestureDetector(
        onTap: () {
      Navigator.popAndPushNamed(context, '/home_screen');
    },
    child: const Icon(
    Icons.arrow_back,
    color: Colors.white,
    ),
    ),
        ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.r),
                      topRight: Radius.circular(0.r),
                      bottomLeft: Radius.circular(25.r),
                      bottomRight: Radius.circular(25.r)
                  ),
                  gradient: LinearGradient(
                    colors: [primaryColor, primaryColorDark],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff676B76).withOpacity(0.7),
                      blurRadius: 40.r,
                      offset: Offset(0, 10),
                      spreadRadius: -15.r,

                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(margin: EdgeInsets.only(top:0.h),
                     child: Container(
                       height: 150.h,
                         width: 400.w,
                         margin: EdgeInsets.all(10),
                          child: Image(
                          image: AssetImage('images/logo3-removebg-preview.png'),fit: BoxFit.cover),
      ), ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                AppLocalizations.of(context)!.about,
                style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.w600, color:tertiaryColor),
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 450.h,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  children: [
                    Column(
                        children: [
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)!.appversion,
                                style: TextStyle(fontSize: 15.sp),),
                              Text("1.0.1", style: TextStyle(color: Colors.grey),)],),
                          Divider(height: 30.h, indent: 0, endIndent: 0, color: Colors.grey, thickness: 0.2,),
                          //
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)!.lastapdate,
                                style: TextStyle(fontSize: 15.sp),),
                              Text("16/01/2021", style: TextStyle(color: Colors.grey),)],),
                          Divider(height: 30.h, indent: 0, endIndent: 0, color: Colors.grey, thickness: 0.2,),
                          //
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)!.develober,
                                style: TextStyle(fontSize: 15.sp),),
                              Text("Karam O Ahmed", style: TextStyle(color: Colors.grey),)],),
                          Divider(height: 30.h, indent: 0, endIndent: 0, color: Colors.grey, thickness: 0.2,),
                          //
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)!.github, style: TextStyle(fontSize: 15.sp),),
                              Text("github.com/KARAMOAHMED", style: TextStyle(color: Colors.grey),)],),
                          Divider(height: 30.h, indent: 0, endIndent: 0, color: Colors.grey, thickness: 0.2,),
                          //
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(AppLocalizations.of(context)!.apps,
                  style: TextStyle(fontSize: 15.sp),),
                              Text("GYM APP", style: TextStyle(color: Colors.grey),)],),
                          Divider(height: 30.h, indent: 0, endIndent: 0, color: Colors.grey, thickness: 0.2,),
                        ]
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}