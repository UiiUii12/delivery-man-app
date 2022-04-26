import 'package:deliverymanapp/historiques.dart';
import 'package:deliverymanapp/informationsPersonnelles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'dart:core';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:deliverymanapp/livrer.dart';
class  Acceuil extends StatelessWidget {

  final String etape ;
  final destination ;

  Acceuil( {Key? key , required this.etape, this.destination  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var notif =5 ;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                  35.6609610106784, -0.6652752343750112), // ihdathiyat Oron
              zoom: 15,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 12.0.h,
                          horizontal: 12.0.w),
                      decoration: BoxDecoration(
                          color: Color(0xffF9F8F8),
                          borderRadius: BorderRadius.circular(36.w)),
                      alignment: Alignment.topCenter,
                      height: 59.h,
                      width: 336.w,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 19.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 4.h, horizontal: 3.0),
                                  height: 33.03.h,
                                  width: 21.w,
                                  child: Center(
                                    child: IconButton(
                                      icon: Icon(
                                        MdiIcons.accountOutline,
                                        color: Color(0xffB80000),
                                        size: 35.sp,
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled : true ,
                                          backgroundColor: Colors.transparent,
                                          builder: ((builder) => Profille ( context)),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 23.w,
                            ),
                            Container(
                                height: 33.04.h,
                                width: 0.5.w,
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 0.5,
                                )),
                            Container(
                              height: 33.04.h,
                              width: 258.w,
                              child: Center(
                                child: Text(
                                  etape,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15.sp,
                                    color: Color(0xffB80000),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                          ])),
                ],
              ),
              ////////////////////////////////////////////////////////////////////
              notif != null ? Padding(
                  padding:
                  EdgeInsets.fromLTRB(31.w, 630.h, 31.w, 8.h),
                  child:
                  ConfirmationSlider(
                      sliderButtonContent: Icon(
                        Icons.double_arrow, color: Color(0xffB80000), size: 27.sp,),
                      foregroundColor: Colors.transparent,
                      height: 50.h,
                      width: 297.0.w,
                      backgroundColor: Colors.white,
                      iconColor: Color(0xffF9F8F8),
                      text: " Suivant",
                      textStyle: TextStyle(color: Color(0xffB80000),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,),
                      onConfirmation: () {
                        Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>  destination == null ? Livrer() : destination),
                        );
                      }
                  ) ) : Container()
            ],

          )
        ]),
      ),
    );
  }
  Widget Profille (BuildContext context){
    final String full_name = 'Ines Nedjaa' ;
    final String phone_number =' 6 98723458' ;
    return
      Column(
        children: [
          Stack(
            children: [
              Container(
                height: 180.h,
                width: 280.w,
                color: Color(0xffB80000),
              ) ,

              Padding(
                padding:  EdgeInsets.only(left: 15.w),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 45.h,) ,
                    Padding(
                      padding:  EdgeInsets.only(right: 280.w),
                      child: ImageProfile(),
                    ),
                    SizedBox(height: 13.h,) ,
                    Text( full_name,
                      style: TextStyle(
                       // fontFamily: 'Poppins',
                        fontSize: 18.sp,
                       // fontWeight: FontWeight.bold,
                        color: Colors.white ,
                      ),),
                    Text( '+213'+phone_number,
                      style: TextStyle(
                        //fontFamily: 'Poppins',
                        fontSize: 12.sp,
                        color: Colors.red[200] ,
                    //    fontWeight: FontWeight.bold,
                      ),),
                  ],
                ),
              )
            ],
          ) ,

          Container(
            margin: EdgeInsets.only(right: 80.w ),
            height: MediaQuery.of( context).size.height  - 180.h ,
            width: 280.w,
            //color: Colors.white54,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,

                  children: [
                    IconButton(
                      icon: Icon(
                        MdiIcons.account,
                        color: Colors.black,
                        size: 23.sp,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> profile() )
                        );
                      },
                    ),
                    SizedBox(
                      width: 5.w,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> profile() )
                        );
                      },
                      child: Text( 'Informations Personnelles',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        MdiIcons.history,
                        color: Colors.black,
                        size: 23.sp,
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=> historiques() )
                        );
                      },
                    ),
                    SizedBox(
                      width: 5.w,),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> historiques() )
                      );},
                      child: Text( 'Historiques',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black ,
                        ),),
                    ),
                  ],
                ),
                SizedBox(height: 30.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        MdiIcons.logout,
                        color: Colors.black,
                        size: 23.sp,
                      ),
                      onPressed: () {

                      },
                    ),
                    SizedBox(
                      width: 5.w,),
                    GestureDetector(
                      onTap: (){},
                      child: Text( 'Se déconnecter',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black ,
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ) ;

  }
  Widget ImageProfile (){
    return Center(
      child: CircleAvatar(
          radius: 40.sp,
          backgroundImage:
          AssetImage("images/pic.jpg")

      ),
    );
  }

}