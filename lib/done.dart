import 'package:deliverymanapp/acceuil.dart';
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
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffb80000),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: HeightSize*(160.h/803.63).h,
                  width:WidthSize*(120.w/392.72).w,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'images/haut.png')),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: HeightSize*(20.h/803.63).h,
            ),
            SizedBox(
              height: HeightSize*(160.h/803.63).h,
             width:WidthSize*(300.w/392.72).w,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'images/moto.png')),
                ),
              ),
            ),

            SizedBox(
              height: HeightSize*(40.h/803.63).h,
            ),
            Container(
              //
              color: Colors.transparent,
              child: SizedBox(
                width:WidthSize*(195.w/392.72).w,
                height: HeightSize*(50.h/803.63).h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                      builder: (context) =>Acceuil(etape: 'aucune commande'  ,  ),));
                  },
                  child: Text('C\'est parti',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: WidthSize*(16.sp/392.72),
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
              height: HeightSize*(20.h/803.63).h,
            ),
            Container(
              //
              color: Colors.transparent,
              child: SizedBox(
                width:WidthSize*(195.w/392.72).w,
                height:  HeightSize*(50.h/803.63).h,
                child: ElevatedButton(
                  onPressed: () {},//envoyer le signal a l'administration
                  child: Text('Problème !',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: WidthSize*(16.sp/392.72),
                        color: Color(0xffb80000),
                      )),
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    primary: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: HeightSize*(100.h/803.63).h,
            ),
            SizedBox(
              height: HeightSize*(160.h/803.63).h,
              //width: 320.w,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'images/bas.png')),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
