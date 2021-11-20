import 'package:elancer_firstproject/widgets/app_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,

      backgroundColor:  Color(0xFF09192A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,

        elevation: 0,

      ),
      body: Column(
         // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 380.h,

              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/girl-box-login.png'),fit: BoxFit.cover),
              ),

            ),
             Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                 Text(
                  AppLocalizations.of(context)!.gymhype,style: TextStyle(color: Colors.yellow,fontSize: 40,fontWeight: FontWeight.w300,),),
               SizedBox(height: 10.h),

               Text(
                 AppLocalizations.of(context)!.lestburnsome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
               SizedBox(height: 20.h),
              AppTextField(
                textEditingController: _emailTextController,
                prefixIcon: Icons.email,
                hint:  AppLocalizations.of(context)!.email,
                textInputType: TextInputType.emailAddress,
                errorText: _emailErrorText,
              ),
               SizedBox(height: 15.h),
              AppTextField(
                textEditingController: _passwordTextController,
                prefixIcon: Icons.lock,
                hint: AppLocalizations.of(context)!.password,
                textInputType: TextInputType.text,
                obscureText: true,
                errorText: _passwordErrorText,
              ),
                   SizedBox(height: 20.h),

                  Text(
                   AppLocalizations.of(context)!.forgetpassword,style: TextStyle(color: Colors.yellow,fontSize: 10,fontWeight: FontWeight.w300),),

               SizedBox(height: 25.h),
              ElevatedButton(
                 onPressed: () {

             Navigator.pushReplacementNamed(
             context, '/home_screen');
             },
                child: Text(AppLocalizations.of(context)!.login,style: TextStyle(color: Colors.black),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFE2BA45),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              )
          ],
        ),
            ),
]
      ),
    );
  }

  //SOLID - Single Responsibility
  void performLogin() {
    if (checkData()) {
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      checkErrors();
      return true;
    }
    checkErrors();
    showMessage(message: 'Enter required fields!',error: true);
    return false;
  }

  void checkErrors() {
    setState(() {
      _emailErrorText =
      _emailTextController.text.isEmpty ? 'Enter email address' : null;
      _passwordErrorText =
      _passwordTextController.text.isEmpty ? 'Enter password' : null;
    });
  }

  void login() {
    showMessage(message: 'Logged in successfully');
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/home_screen');
    });
  }

  void showMessage({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
        duration: const Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsetsDirectional.only(
          bottom: 20,
          start: 30,
          end: 30,
        ),
        onVisible: () => print('Visible'),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        // padding: EdgeInsets.symmetric(
        //   horizontal: 20,
        //   vertical: 20,
        // ),
        // action: SnackBarAction(
        //   onPressed: () {},
        //   label: 'DONE',
        //   textColor: Colors.orange,
        // ),
      ),
    );
  }
}
