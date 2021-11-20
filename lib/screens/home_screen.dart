import 'package:elancer_firstproject/providers/language_provider.dart';
import 'package:elancer_firstproject/widgets/AppStyles.dart';
import 'package:elancer_firstproject/widgets/appbar_widget.dart';
import 'package:elancer_firstproject/widgets/gesture_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 200.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: AppbarWidget(
          text: AppLocalizations.of(context)!.welcomehere,
        ),
        // child:
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<LanguageProvider>(context,listen: false).changeLanguage();
        },
        child: Icon(Icons.language),
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
                  textTitle: AppLocalizations.of(context)!.bmiCalculator,
                  imageName: 'images/logo3-removebg-preview.png',
                  pageNav: '/bmi_screen',
                ),
                GestureDetect(
                    textTitle: AppLocalizations.of(context)!.exercisepage,
                    imageName: 'images/213.png',
                    pageNav: '/exercises_type'),
                GestureDetect(
                    textTitle: AppLocalizations.of(context)!.mealsScreen,
                    imageName: 'images/522.png',
                    pageNav: '/food_screen'),
                GestureDetect(
                    textTitle: AppLocalizations.of(context)!.aboutapp,
                    imageName: 'images/555.png',
                    pageNav: '/about_screen')
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
