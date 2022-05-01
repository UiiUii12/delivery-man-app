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
import 'package:deliverymanapp/profile.dart';
class  Acceuil extends StatelessWidget {

  final String etape ;
  final destination ;

  Acceuil( {Key? key , required this.etape, this.destination  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    var notif =5;
    return SafeArea(
      child: Scaffold(drawer: profile(phone_number:'0556223918',full_name:'ines nedjaa'),
        body: Builder(
          builder: (context) {
            return Stack(children: [
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
                              horizontal:12.0.w),
                          decoration: BoxDecoration(
                              color: Color(0xffF9F8F8),
                              borderRadius: BorderRadius.circular(36.w)),
                          alignment: Alignment.topCenter,
                          height: HeightSize*(59.h/803.63).h,
                          width: WidthSize*(335.w/392.72),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: WidthSize*(19.w/392.72),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 4.h, horizontal: 3.0),
                                      height: HeightSize*(33.03.h/803.63).h,
                                      width:  WidthSize*(21.w/392.72),
                                      child: Center(
                                        child: IconButton(
                                          icon: Icon(
                                            MdiIcons.accountOutline,
                                            color: Color(0xffB80000),
                                            size: 35.sp,
                                          ),
                                          onPressed: () {
                                         Scaffold.of(context).openDrawer();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: WidthSize*(23.w/392.72),
                                ),
                                Container(
                                    height:HeightSize*(33.04.h/803.63).h,
                                    width: WidthSize*(0.5.w/392.72),
                                    child: VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 0.5,
                                    )),
                                Container(
                                  height:HeightSize*(33.04.h/803.63).h,
                                  width: WidthSize*(258.w/392.72),
                                  child: Center(
                                    child:this.etape != 'aucune commande' ?
                                    Text(
                                      this.etape,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        color: Color(0xffB80000),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                        : notif != null ? Text(
                                        'vous avez une commande',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 15.sp,
                                          color: Color(0xffB80000),
                                          fontWeight: FontWeight.bold,
                                        )) :
                                    Text(
                                     this.etape,
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
                                  width: WidthSize*(4.w/392.72),
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
                          height:HeightSize*(50.h/803.63).h,
                          width: WidthSize*(297.w/392.72),
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
            ]);
          }
        ),
      ),
    );
  }
  Widget Profille (BuildContext context){
    double WidthSize=MediaQuery.of(context).size.width;
    double HeightSize=MediaQuery.of(context).size.height;
    final String full_name = 'Ines Nedjaa' ;
    final String phone_number =' 6 93723458' ;
    return
      Column(
        children: [
          Stack(
            children: [
              Container(
                height: HeightSize*(180.h/803.63).h,
                width:  WidthSize*(280.w/392.72),
                color: Color(0xffB80000),
              ) ,

              Padding(
                padding:  EdgeInsets.only(left: 15.w),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height:HeightSize*(45.h/803.63).h,) ,
                    Padding(
                      padding:  EdgeInsets.only(right: 280.w),
                      child: ImageProfile(),
                    ),
                    SizedBox(height: 13.h,) ,
                    Text( full_name,
                      style: TextStyle(
                       // fontFamily: 'Poppins',
                        fontSize: WidthSize*(18.sp/392.72),
                       // fontWeight: FontWeight.bold,
                        color: Colors.white ,
                      ),),
                    Text( '+213'+phone_number,
                      style: TextStyle(
                        //fontFamily: 'Poppins',
                        fontSize: WidthSize*(12.sp/392.72),
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
            width:  WidthSize*(280.w/392.72),
            //color: Colors.white54,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:HeightSize*(30.h/803.63).h,),
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
                            MaterialPageRoute(builder: (context)=> InfoPerso() )
                        );
                      },
                    ),
                    SizedBox(
                      width: WidthSize*(5.w/392.72).w,),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>InfoPerso() )
                        );
                      },
                      child: Text( 'Informations Personnelles',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize:  WidthSize*(14.sp/392.72),
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),),
                    ),
                  ],
                ),
                SizedBox(height:HeightSize*(30.h/803.63).h,),
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
                      width: WidthSize*(5.w/392.72).w,),
                    GestureDetector(
                      onTap: (){ Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> historiques() )
                      );},
                      child: Text( 'Historiques',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize:  WidthSize*(14.sp/392.72),
                          fontWeight: FontWeight.bold,
                          color: Colors.black ,
                        ),),
                    ),
                  ],
                ),
                SizedBox(height:HeightSize*(30.h/803.63).h,),
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
                      width:WidthSize*( 5.w/392.72).w,),
                    GestureDetector(
                      onTap: (){},
                      child: Text( 'Se déconnecter',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize:  WidthSize*(14.sp/392.72),
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
          AssetImage("images/Capturesdhf.jpg")

      ),
    );
  }

}