import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class historiques extends StatefulWidget {
  const historiques({Key? key}) : super(key: key);
  @override
  State<historiques> createState() => _historiquesState();
}

class _historiquesState extends State<historiques> {
  List<Map<String, String>> historique = [
    { 'Ncommande' : 'Commande 1' , 'date': '2022 03 26' , 'time' : '16:41'},
    { 'Ncommande' : 'Commande 3' , 'date': '2022 03 26' , 'time' : '17:41'},
    { 'Ncommande' : 'Commande 4' , 'date': '2022 03 26' , 'time' : '18:41'},
    { 'Ncommande' : 'Commande 5' , 'date': '2022 03 26' , 'time' : '14:41'},
    { 'Ncommande' : 'Commande 6' , 'date': '2022 03 26' , 'time' : '19:41'},
    { 'Ncommande' : 'Commande 7' , 'date': '2022 03 26' , 'time' : '16:41'},
    { 'Ncommande' : 'Commande 8' , 'date': '2022 03 26' , 'time' : '16:41'},
    { 'Ncommande' : 'Commande 9' , 'date': '2022 03 26' , 'time' : '16:41'},
    { 'Ncommande' : 'Commande 10' , 'date': '2022 03 26' , 'time' : '16:41'},
    { 'Ncommande' : 'Commande 11' , 'date': '2022 03 26' , 'time' : '16:41'},
    { 'Ncommande' : 'Commande 12' , 'date': '2022 03 26' , 'time' : '16:41'},

  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold (
      appBar : AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Historiques' ,
                  style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  fontSize: 18.sp ,
                  fontWeight: FontWeight.bold ,
             ),
            ),
          ],
        ),
        backgroundColor: Color(0xffB80000),
      ),
      body:
      Column(
        children: [
          SizedBox( height: 10.h,) ,
          /* Padding(
            padding:  EdgeInsets.only(left: 10.w , right: 200.w),
            child: Text (
              "Historiques :",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontSize: 18.sp ,
                fontWeight: FontWeight.bold ,
              ),
            ),
          ),*/
          Container(
            margin: EdgeInsets.fromLTRB(15.w, 10.h, 15.w, 0.h),
            height: (MediaQuery.of(context).size.height-10.h-AppBar().preferredSize.height-0.07*MediaQuery.of(context).size.height).h,
            width: 350.w,
            color: Colors.transparent,
            child: ListView.builder(
                itemCount:historique.length ,
                itemBuilder: (context, i){
                  final hs = historique[i]['Ncommande'];
                  final hsd = historique[i]['date'];
                  final hst = historique[i]['time'];
                  return Column(
                    children: [
                      Container(
                        height:65.h ,
                        width: 350.w ,
                        color: Color(0xb3C4C4C4),
                        child: Column(
                          children: [
                            FittedBox(
                              child: Row(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 10.w , top: 10.h , right:180.w ),
                                    child: Text(
                                      "$hs" ,

                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.sp ,
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding:  EdgeInsets.only(  left :0 , right: 10, bottom: 0 , top: 10.h),
                                    child: Text(
                                      "$hsd" ,

                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10.sp ,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: 250.w ),
                              child: Text(
                                "$hst" ,

                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp ,
                                ),
                              ),
                            ),

                          ],
                        ),


                      ),
                      SizedBox(height: 10.h,),
                    ],
                  );
                }),
          ),
        ],
      ),
    )
    ) ;
  }
}