import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: EdgeInsets.only(top: 9.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                Text(
                  'Meals  PAGE BE healthy',
                  style: TextStyle(
                    color: Colors.yellow,fontSize: 22.sp,fontWeight: FontWeight.bold,
                    wordSpacing: 2,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  '',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
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
                      image: AssetImage('images/biceps_curls.jpg'),fit: BoxFit.cover),
                ),

              ),
              SafeArea(

                child: SingleChildScrollView( // <-- wrap this around
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("breakfast meal" ,style: TextStyle(color: Colors.yellow,fontSize: 25.sp,fontWeight: FontWeight.bold),),
                          Text("first meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/break1.jpg'),fit: BoxFit.cover),
                            ), ),
                          SizedBox(height: 15,),
                          Text("second meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/break2.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("third meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/break3.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("fourth meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/break4.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("fifth meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/break5.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("lunch meal" ,style: TextStyle(color: Colors.yellow,fontSize: 25.sp,fontWeight: FontWeight.bold),),

                          Text("first meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/lanch1.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("second meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/lanch2.webp'),fit: BoxFit.cover),
                            ), ),
                          Text("third meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/lanch3.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("fourth meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/lanch4.png'),fit: BoxFit.cover),
                            ), ),
                          Text("fifth meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/lanch5.jpg'),fit: BoxFit.cover),
                            ), ),

                          Text("dinner meal" ,style: TextStyle(color: Colors.yellow,fontSize: 25.sp,fontWeight: FontWeight.bold),),

                          Text("first meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/diner1.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("second meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/diner2.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("third meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/diner3.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("fourth meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/diner4.webp'),fit: BoxFit.cover),
                            ), ),
                          Text("fifth meal" ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Container(
                            width: 500.w,
                            margin: EdgeInsets.all(10),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image(
                                  image: AssetImage('images/diner5.jpg'),fit: BoxFit.cover),
                            ), ),
                          Text("end of  meals " ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),
                          Text("karam ahmed " ,style: TextStyle(color: Colors.yellow,fontSize: 15.sp,fontWeight: FontWeight.bold),),


                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ]
        )
    );
  }
}
