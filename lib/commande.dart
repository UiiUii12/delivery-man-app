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
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold (
      body: Stack(
        children: [
          Acceuil(etape: 'La commande'  , destination: GoToClient(), ),
          Container(
              margin: EdgeInsets.fromLTRB(15.w, 350.h, 15.w, 47.h),
              height:HeightSize*(350.h/803.63),
              width:  WidthSize*(330.w/392.72),
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
                    height:HeightSize*(75.h/803.63),
                    width: WidthSize*(302.w/392.72),
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
                            height:HeightSize*(70.h/803.63),
                            width: WidthSize*(180.w/392.72),
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

                                        fontSize: WidthSize*(15.sp/392.72),
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

                                  fontSize:  WidthSize*(15.sp/392.72),)),
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