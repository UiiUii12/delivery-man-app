import 'package:deliverymanapp/spalsh.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 800), //154.3,244.5
      minTextAdapt: true,
      splitScreenMode: true,

      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false, // no more debug
        home: SplachScreen(),
      ),
    );
  }
}
