import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:deliverymanapp/acceuil.dart';
import 'package:deliverymanapp/gotoclient.dart';
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
    return SafeArea(child: Scaffold (
      body: Stack(
        children: [
          Acceuil(etape: 'La commande'  , destination: GoToClient(), ),
          Container(
              margin: EdgeInsets.fromLTRB(15.w, 350.h, 15.w, 47.h),
              height: 350.h,
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
                    decoration: BoxDecoration(
                        color: Color(0xffF9F8F8),
                        borderRadius: BorderRadius.circular(28.w)),
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
                          ),

                        ]
                    ),
                  );
                },
              )

          ),
        ],
      ),
    )
    );
  }
}