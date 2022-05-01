import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:deliverymanapp/recuperation.dart';
import 'package:deliverymanapp/acceuil.dart';


class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  _ConnexionState createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  bool _secureText = true;


  @override
  Widget build(BuildContext context) {
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Se connecter.png"), fit: BoxFit.cover),
          ),
        ),
        Scaffold(
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
                            child: Container(
                              height:HeightSize*(60.h/803.63).h,
                              child: FittedBox(
                                child: Text('Se connecter',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: WidthSize*(40.sp/392.72),
                                      color: Colors.black,
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        //container card
                        width: WidthSize*(300.w/392.72).w,
                        height:  HeightSize*(288.h/803.63).h,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 0.1.w,
                            ),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.r),
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
                              height:  HeightSize*(15.h/803.63).h,
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Column(
                                  children: [
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 14.h, horizontal: 0.w),
                                            child: Container(
                                              width:WidthSize*(260.w/392.72).w,
                                              height:  HeightSize*(40.h/803.63).h,
                                              color: Colors.transparent,
                                              child: TextFormField(
                                                //lgris lewel
                                                decoration: InputDecoration(
                                                  contentPadding:
                                                      EdgeInsets.all(10.0.h),
                                                  counterText: "",
                                                  border: InputBorder.none,
                                                  hintText: 'Email',
                                                  hintStyle: TextStyle(
                                                    fontSize: WidthSize*(15.sp/392.72),
                                                    fontFamily: 'Poppins',
                                                    color: Colors.grey[500],
                                                  ),
                                                  fillColor: Color(0xffF6F6F6),
                                                  filled: true,
                                                ),
                                                keyboardType: TextInputType.emailAddress,
                                                textInputAction: TextInputAction.next,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            //troisieme espace
                                            height:HeightSize*(15.h/803.63).h,
                                          ),
                                          Container(
                                            //lgris deuxieme
                                            width:WidthSize*(260.w/392.72).w,
                                            height:   HeightSize*(40.h/803.63).h,
                                            color: Colors.transparent,
                                            child: TextFormField(
                                              textAlign: TextAlign.left,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.all(10.0.h),
                                                border: InputBorder.none,
                                                hintText: 'Mot de passe',
                                                suffixIcon: IconButton(
                                                  icon: Icon(
                                                      _secureText
                                                          ? Icons.remove_red_eye
                                                          : Icons.visibility_off,
                                                      color: Colors.grey[500]),
                                                  iconSize: 20.sp,
                                                  onPressed: () {
                                                    setState(() {
                                                      _secureText = !_secureText;
                                                    });
                                                  },
                                                ),
                                                hintStyle: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Colors.grey[500],
                                                  fontSize: WidthSize*(15.sp/392.72),
                                                ),
                                                fillColor: Color(0xffF6F6F6),
                                                filled: true,
                                                isCollapsed: true,
                                              ),
                                              obscureText: _secureText,
                                              textInputAction:
                                                  TextInputAction.done,
                                            ),
                                          ),
                                          SizedBox(
                                            //troisieme espace
                                            height:HeightSize*(4.h/803.63).h,
                                          ),
                                          TextButton(
                                            onPressed: () {
                                                Navigator.push(
                                                context, MaterialPageRoute(
                                                    builder: (context) => Recuperation()));
                                            },
                                            child: Text(
                                              'Mot de passe oublié?',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize:WidthSize*(12.sp/392.72),
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                            ),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: HeightSize*(18.h/803.63).h,
                                    ),
                                    Container(
                                      //
                                      color: Colors.transparent,
                                      child: SizedBox(
                                        width: WidthSize*(195.w/392.72).w,
                                        height: HeightSize*(42.h/803.63).h,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context, MaterialPageRoute(
                                                builder: (context) => Acceuil(etape: 'aucune commande'  ,  )));
                                          },
                                          child: Text('Se connecter',
                                              style: TextStyle(
                                                fontSize: WidthSize*(16.sp/392.72),
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
                                      height: HeightSize*(15.h/803.63).h,
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
