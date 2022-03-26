import 'package:deliverymanapp/gotoclient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:deliverymanapp/main.dart';
import 'dart:core';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class commande extends StatefulWidget {
  const commande({Key? key}) : super(key: key);
  @override
  State<commande> createState() => _commandeState();
}


class _commandeState extends State<commande> {

  List<Map<String, String>> commande = [
    {'item': 'Pizza', 'compteur': '3'},
    {'item': 'Tacos', 'compteur': '3'},
    {'item': 'Burger', 'compteur': '3'} ,
    {'item': 'Pizza viande hachée', 'compteur': '10'},
    {'item': 'Pizza viande hachée', 'compteur': '10'}


  ];


  @override
  Widget build(BuildContext context) {
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
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 12.0.h,
                          horizontal: 12.0.w),
                      // ba3adna 3la l7afa min lfo9
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
                                      onPressed: () {},
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
                                  'La commande',
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
              Container(
                  margin: EdgeInsets.fromLTRB(15.w, 230.h, 15.w, 47.h),
                  // ba3adna 3la l7afa min lfo9
                  height: 320.h,
                  width: 330.w,
                  decoration: BoxDecoration(
                      color: Color(0xb3C4C4C4),
                      borderRadius: BorderRadius.circular(28.w)),
                  child: ListView.builder(
                    itemCount: commande == null ? 0 : commande.length,
                    itemBuilder: (context, index) {
                      final  name = commande[index]['item'];
                      final occu = commande[index]['compteur'];
                      return Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        // ba3adna 3la l7afa min lfo9
                        decoration: BoxDecoration(
                            color: Color(0xffF9F8F8),
                            borderRadius: BorderRadius.circular(28.w)),
                        // alignment: Alignment.topCenter,
                        height: 75.h,
                        width: 302.w,
                        child:
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 70 , left: 30),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(28.w)),
                                // alignment: Alignment.topCenter,
                                height: 70.h,
                                width: 180.w,

                                child:
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: Text("$name",
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,

                                            fontSize: 15.sp,
                                          )),
                                    ),
                                  ],
                                ),

                              ),

                              Expanded(child:

                              Center(
                                child:


                                Text(
                                    "$occu",
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,

                                      fontSize: 15.sp,)),
                              ),




                                //),
                              ),

                            ]
                        ),
                      );
                    },
                  )

              ),
              Padding(
                padding:
                EdgeInsets.symmetric(vertical: 8.h, horizontal: 31.w),
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
                  onConfirmation: () =>
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => GoToClient()),
                      ),
                ),
              )
            ],

          )
        ]),
      ),
    );
  }
}