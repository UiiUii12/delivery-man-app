import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:deliverymanapp/historiques.dart'; //  la page ta3 his
import 'package:deliverymanapp/informationsPersonnelles.dart'; // la page ta3 info perso
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:deliverymanapp/draweritem.dart';

class profile extends StatelessWidget {
  const profile({Key? key, required this.full_name,  required this.phone_number}) : super(key: key);
  final String full_name ;
  final String phone_number ;
  @override
  Widget build(BuildContext context) {
    double HeightSize = MediaQuery.of(context).size.height;
    return Drawer(
      child: Column(
        children: [
          drawerheader ( context) ,
          SizedBox(height: HeightSize*(40.h/803.63).h ,),
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: Column(
                children :[
                  Drawer_item(
                    icon: MdiIcons.account,
                    name: 'Informations Personnelles',
                    onPressed: () { Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> InfoPerso() )
                    ); },) ,
                  SizedBox(height: HeightSize*(20.h/803.63) ,),
                  Drawer_item(
                    icon: MdiIcons.history,
                    name: 'Historiques',
                    onPressed: () { Navigator.of(context).push(
                        MaterialPageRoute(builder: (context)=> historiques() )
                    ); },) ,
                  SizedBox(height: HeightSize*(20.h/803.63) ,),
                  Drawer_item(
                    icon: MdiIcons.logout,
                    name: 'Se déconnecter',
                    onPressed: () { },) ,
                ] ),
          )],
      ),
    );
  }
  Widget drawerheader (BuildContext context){
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    return Material(
      color: Color(0xffB80000),

      child: SizedBox(
        height: HeightSize*(180.h/803.63) ,
        child :Row(

          children: [
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: HeightSize*(30.h/803.63).h,) ,


                  Padding(
                    padding:  EdgeInsets.only(right: 190.w),
                    child: CircleAvatar(
                        radius: 40.sp,
                        backgroundImage:
                        AssetImage("images/Capturesdhf.jpg")

                    ),
                  ),
                SizedBox(height: HeightSize*(20.h/803.63),),
                  Text( full_name,

                    style: TextStyle(
                      //fontFamily: 'Poppins',
                      fontSize:  WidthSize*(18.sp/392.72) ,
                    //  fontWeight: FontWeight.bold,
                      color: Colors.white ,
                    ),),
                  Text( '+213  ' + phone_number.substring(1,2)+' '+phone_number.substring(2),
                    style: TextStyle(
                      //fontFamily: 'Poppins',
                      fontSize: WidthSize*(12.sp/392.72) ,
                      color: Colors.red[200],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}