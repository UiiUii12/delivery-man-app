import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'package:project/Myicons.dart';
//import 'Myicons.dart';


class Acceuil extends StatefulWidget {
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
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
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween, //bach nba3ad binathom
            //crossAxisAlignment: CrossAxisAlignment.,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 12.0.h,
                          horizontal: 12.0.w), // ba3adna 3la l7afa min lfo9
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
                                child: const VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 0.5,
                                )),
                            Container(
                              //margin: EdgeInsets.symmetric(horizontal:0.0.w ,vertical: 15.h),
                              //color: Colors.red,
                              height: 33.04.h,
                              width: 258.w,
                              child: Center(
                                child: Text(
                                  'aucune commande',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17.sp,
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
            ],
          )
        ]),
      ),
    );
  }
}