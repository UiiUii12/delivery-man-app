
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:deliverymanapp/connexion.dart';

class Recuperation extends StatelessWidget {
  const Recuperation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Se connecter.png"),
                fit: BoxFit.cover),
          ),
        ),
        Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
            floatingActionButton: SizedBox.fromSize(
              size: Size.fromRadius(20),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                      builder: (context) => Connexion()));
                },
                child: Icon(Icons.arrow_back, color: Colors.black),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.r),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Column(children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.w, 100.h, 38.w, 50.h),
                        child: Container(
                          height: HeightSize*(80.h/803.63).h,
                          width: WidthSize*(283.w/392.72).w,
                          child: Center(
                            child: Text('Récupération',
                                textScaleFactor: 0.96.sp,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: WidthSize*(40.sp/392.72),
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                      Container(
                        //container card
                        width: WidthSize*(300.w/392.72).w,
                        height:HeightSize*(288.h/803.63).h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: WidthSize*(0.1.w/392.72).w,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5.r,
                                blurRadius: 7.r,
                                offset: Offset(5, 5),
                              ),
                            ]),
                        child: Column(
                          //column de contenu de container
                          children: [
                            SizedBox(
                              //le premier espace
                              height:HeightSize*(50.h/803.63).h,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 30.w),
                                child: Column(
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 14.h),
                                            child: Container(
                                              width: WidthSize*(260.w/392.72).w,
                                              height:HeightSize*(40.h/803.63).h,
                                              color: Colors.transparent,
                                              child: TextFormField(
                                                //lgris lewel
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                  EdgeInsets.all(10.0.h),
                                                  counterText: "",
                                                  border: InputBorder.none,
                                                  hintText: 'Adresse email',
                                                  hintStyle: TextStyle(
                                                    fontSize:WidthSize*(15.sp/392.72),
                                                    fontFamily: 'Poppins',
                                                    color: Colors.grey[500],
                                                  ),
                                                  fillColor: Color(0xffF6F6F6),
                                                  filled: true,
                                                ),
                                                keyboardType:
                                                TextInputType.emailAddress,
                                                textInputAction: TextInputAction.next,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            //troisieme espace
                                            height: HeightSize*(15.h/803.63).h,
                                          ),

                                          SizedBox(
                                            //troisieme espace
                                            height:HeightSize*(15.h/803.63).h,
                                          ),
                                        ]),
                                    SizedBox(
                                      height:HeightSize*(40.h/803.63).h,
                                    ),
                                    Container(
                                      //lbutton
                                      color: Colors.transparent,
                                      child: SizedBox(
                                        width: WidthSize*(200.w/392.72).w,
                                        height:HeightSize*(40.h/803.63).h,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context, MaterialPageRoute(
                                                builder: (context) => Connexion()));
                                          },
                                          child: Text('envoyer le lien',
                                              style: TextStyle(
                                                fontSize: WidthSize*(20.sp/392.72),
                                                color: Colors.white,
                                              )),
                                          style: ElevatedButton.styleFrom(
                                            shadowColor: Colors.grey,
                                            primary: Color(0xffb80000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      //cienquiéme espace
                                      height:HeightSize*(15.h/803.63).h,
                                    ),
                                  ],
                                )), //container lbyadh
                          ],
                        ),
                      ),
                    ])
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}
