import 'package:deliverymanapp/acceuil.dart';
import 'package:deliverymanapp/connexion.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:project/Myicons.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
//import 'Myicons.dart';

class GoToClient extends StatefulWidget {                              // vous avez une commande
  const GoToClient({Key? key}) : super(key: key);

  @override
  State<GoToClient> createState() => _GoToClientState();
}

class _GoToClientState extends State<GoToClient> {
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
                                        MdiIcons
                                            .accountOutline, //account-outline
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
                              //margin: EdgeInsets.symmetric(horizontal:0.0.w ,vertical: 15.h),
                              //color: Colors.red,
                              height: 33.04.h,
                              width: 258.w,
                              child: Center(
                                child: Text(
                                  'Aller au client',
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
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 31.w),
                child: ConfirmationSlider(
                  sliderButtonContent: Icon(
                    Icons.double_arrow,
                    color: Color(0xffB80000),
                    size: 27.sp,
                  ),
                  foregroundColor: Colors.transparent,
                  height: 50.h,
                  width: 297.0.w,
                  backgroundColor: Colors.white,
                  iconColor: Color(0xffF9F8F8),
                  text: " Suivant",
                  textStyle: const TextStyle(
                    color: Color(0xffB80000),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                  onConfirmation: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Acceuil()),
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