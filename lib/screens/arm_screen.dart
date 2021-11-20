import 'package:elancer_firstproject/widgets/AppStyles.dart';
import 'package:elancer_firstproject/widgets/TrainingWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Arm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.popAndPushNamed(context, '/exercises_type');
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.only(top: 9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  <Widget>[
              Text(
                AppLocalizations.of(context)!.trainingpagebestrong,
                style: TextStyle(
                  color: primaryColorDark,
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2,
                  letterSpacing: 2,
                ),
              ),
              Text(
                '',
                style: TextStyle(
                  color: primaryColorDark,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(alignment: Alignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/biceps_curls.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              // <-- wrap this around
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AppLocalizations.of(context)!.armsexercises,
                       style: BigTitle,),
                    TrainingWidget(
                        exerName: AppLocalizations.of(context)!.firstexercises,
                        imageName: 'images/arm1.jpg'),
                    TrainingWidget(exerName: AppLocalizations.of(context)!.secondexercises,
                        imageName: 'images/arm2.jpg'),
                    TrainingWidget(exerName: AppLocalizations.of(context)!.thirdexercises,
                        imageName: 'images/arm3.jpg'),
                    TrainingWidget(exerName: AppLocalizations.of(context)!.fourthexercises,
                        imageName: 'images/arm4.jpg'),
                    TrainingWidget(exerName: AppLocalizations.of(context)!.fifthexercises,
                        imageName: 'images/arm5.webp'),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
