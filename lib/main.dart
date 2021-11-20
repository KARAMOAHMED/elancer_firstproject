import 'package:elancer_firstproject/prefs/shared_pref_controller.dart';
import 'package:elancer_firstproject/providers/language_provider.dart';
import 'package:elancer_firstproject/screens/Leg.dart';
import 'package:elancer_firstproject/screens/OutBoardingScreen.dart';
import 'package:elancer_firstproject/screens/Shoulder.dart';
import 'package:elancer_firstproject/screens/about_screen.dart';
import 'package:elancer_firstproject/screens/arm_screen.dart';
import 'package:elancer_firstproject/screens/bmi_screen.dart';
import 'package:elancer_firstproject/screens/chest_excersices.dart';
import 'package:elancer_firstproject/screens/exercises_type.dart';
import 'package:elancer_firstproject/screens/first_screen.dart';
import 'package:elancer_firstproject/screens/food_screen.dart';
import 'package:elancer_firstproject/screens/home_screen.dart';
import 'package:elancer_firstproject/screens/launch_screen.dart';
import 'package:elancer_firstproject/screens/login_screen.dart';
import 'package:elancer_firstproject/screens/back_excercis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LanguageProvider(),
      child: MyAppMaterial(),
    );
  }
}

class MyAppMaterial extends StatelessWidget {
  const MyAppMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 938),
        builder: () {
          return MultiProvider(
              providers: [
                ChangeNotifierProvider<BMIResultProvider>(
                  create: (context) => BMIResultProvider(),
                ),
              ],
              child: MaterialApp(
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: [Locale('en'), Locale('ar')],
                locale: Locale(Provider.of<LanguageProvider>(context).language),
                initialRoute: '/launch_screen',
                routes: {
                  '/launch_screen': (context) => LaunchScreen(),
                  '/first_screen': (context) => FirstScreen(),
                  '/login_screen': (context) => LoginScreen(),
                  '/bmi_screen': (context) => BmiScreen(),
                  '/food_screen': (context) => FoodScreen(),
                  '/home_screen': (context) => MainScreen(),
                  '/about_screen': (context) => About(),
                  '/OutBoardingScreen': (context) => OutBoardingScreen(),
                  '/exercises_type': (context) => ExercisesType(),
                  '/back_screen': (context) => BackScreen(),
                  '/chest_excersices': (context) => Chest(),
                  '/leg_screen': (context) => Leg(),
                  '/shoulder_screen': (context) => Shoulder(),
                  '/arm_screen': (context) => Arm(),
                },
              ));
        });
  }
}
