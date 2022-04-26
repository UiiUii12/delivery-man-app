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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffb80000),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160.h,
                  width: 120.w,
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
              height:20.h ,
            ),
            SizedBox(
              height: 160.h,
             width: 300.w,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'images/moto.png')),
                ),
              ),
            ),

            SizedBox(
              height: 40.h,
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
                      builder: (context) =>Acceuil(etape: 'Accune commande'  ,  ),));
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
                  onPressed: () {},//envoyer le signal a l'administration
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
            SizedBox(
              height:100.h,
            ),
            SizedBox(
              height: 160.h,
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
