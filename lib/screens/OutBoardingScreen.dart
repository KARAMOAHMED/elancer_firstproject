import 'package:elancer_firstproject/widgets/OutBoardingContent.dart';
import 'package:elancer_firstproject/widgets/out_boarding_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  _OutBoardingScreenState createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

          alignment: Alignment.center,

          children: [
      Container(
      margin: const EdgeInsets.only(
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/abs.jpg'),fit: BoxFit.cover),
      ),

    ),
    SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: AlignmentDirectional.topEnd,
            child: Visibility(
              visible: _currentPage < 2,
              replacement: TextButton(
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login_screen'),
                child:  Text(
                  AppLocalizations.of(context)!.start,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              child: TextButton(
                onPressed: () => _pageController.animateToPage(2,
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut),
                child:  Text(
                  AppLocalizations.of(context)!.skip,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),
                ),
              ),
            ),
          ),
          ConstrainedBox(
            constraints:  BoxConstraints(
              minWidth: 0,
              maxWidth: double.infinity,
              minHeight: 0,
              maxHeight: 500,
            ),
            child: PageView(
              controller: _pageController,
              // scrollDirection: Axis.vertical,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
                print('Current Page: $value');
              },
              children: [
                OutBoardingContent(
                  mainText: AppLocalizations.of(context)!.welcomeinthegymapp,

                  subText:
                  AppLocalizations.of(context)!.enjoy
                ),
                OutBoardingContent(

                    mainText: AppLocalizations.of(context)!.welcomeinthegymapp,

                    subText:
                    AppLocalizations.of(context)!.enjoy
                ),
                OutBoardingContent(
                    mainText: AppLocalizations.of(context)!.welcomeinthegymapp,

                    subText:
                    AppLocalizations.of(context)!.enjoy
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: _currentPage == 0 ? Colors.grey : Colors.black,
                onPressed: () {
                  _pageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
              IconButton(
                color: _currentPage == 2 ? Colors.grey : Colors.black,
                onPressed: () {
                  _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
           SizedBox(height: 10.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              out_boarding_indicator(
                marginEnd: 10,
                selected: _currentPage == 0,
              ),
              out_boarding_indicator(
                marginEnd: 10,
                selected: _currentPage == 1,
              ),
              out_boarding_indicator(
                selected: _currentPage == 2,
              ),
            ],
          ),
           SizedBox(
            height: 20.h,
          ),
          Visibility(
            visible: _currentPage == 2,
            maintainAnimation: true,
            maintainState: true,
            maintainSize: true,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  primary: const Color(0xFFE2BA45),
                ),
                onPressed: () =>
                    Navigator.pushReplacementNamed(context, '/login_screen'),
                child:  Text(AppLocalizations.of(context)!.start,
                    style: TextStyle(color: Colors.black),),
              ),
            ),
          ),
        ],
      ),
    ),
    ]
      ),
    );
  }
}