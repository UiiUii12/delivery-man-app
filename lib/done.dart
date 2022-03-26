import 'package:deliverymanapp/enterfirstcommand.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Done extends StatefulWidget {
  const Done({Key? key}) : super(key: key);

  @override
  _DoneState createState() => _DoneState();
}

class _DoneState extends State<Done> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffb80000),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              SizedBox(
                height: 160.h,
                width: 220.w,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'images/Oussama_Express-removebg-preview.png')),
                  ),
                ),
              ),

              SizedBox(
                height: 30.h,
              ),
              Container(
                //
                color: Colors.transparent,
                child: SizedBox(
                  width: 195.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => EnterFirstCommand()));
                    },
                    child: Text('C\'est parti',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          color: Colors.black,
                        )),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                //
                color: Colors.transparent,
                child: SizedBox(
                  width: 195.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Problème !',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          color: Color(0xffb80000),
                        )),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      primary: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
