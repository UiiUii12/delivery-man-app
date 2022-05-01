import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:core';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'dart:io';
//import 'package:intl/intl.dart';
import 'package:deliverymanapp/historiques.dart';
import 'package:deliverymanapp/acceuil.dart';
class InfoPerso extends StatefulWidget {
  const InfoPerso ({Key? key}) : super(key: key);
  @override
  State<InfoPerso> createState() => _InfoPersoState();
}

class _InfoPersoState extends State<InfoPerso> {
  List<Map<String, String>> livreur = [
    {'ID': '46837', 'Nom': 'Nedjaa' , 'Prenom':'Ines' , 'phone_number':'0698723458'},
    {'ID': '65827', 'Nom': 'Kara' , 'Prenom':'Yasmine' , 'phone_number':'0698723458'},
    {'ID': '46837', 'Nom': 'Bendouba' , 'Prenom':'Hana' , 'phone_number':'0698723458'},
    {'ID': '46837', 'Nom': 'Slama' , 'Prenom':'Menat' , 'phone_number':'0698723458'},
  ];
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
  var  _imageFile  ;
  final ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    double WidthSize = MediaQuery.of(context).size.width;
    double HeightSize = MediaQuery.of(context).size.height;
    final livI = livreur[0]['ID'];
    final livN = livreur[0]['Nom'];
    final livP = livreur[0]['Prenom'];
    final livPh = livreur[0]['phone_number'];
    return
      SafeArea(
          child: Scaffold(

              floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
              floatingActionButton: SizedBox.fromSize(
                size: Size.fromRadius(16),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (context) => Acceuil(etape: 'aucune commande')));
                  },
                  child: Icon(Icons.clear_rounded, color: Colors.white),
                  backgroundColor: Color(0xffb80000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
              body: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration:
                      BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage("images/Profile.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Column(
                        children: [
                          SizedBox(
                            height:(HeightSize*(90.h/803.63)),
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageProfile(),
                            ]),
                          SizedBox(height: HeightSize*(20.h/803.63),),
                          Text('Nedjaa Ines',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: WidthSize*(20.sp/392.72),
                          )),
                          SizedBox(
                            height:HeightSize*(50.h/803.63) ,
                          ),
                          Card(

                            child:SizedBox(
                              height: HeightSize*(50.23.h/803.63) ,
                              width: WidthSize*(305.45.h/392.72) ,
                              child: Row(
                                children: [
                                  Text(' '),
                                  Icon(
                                      MdiIcons.account,
                                      color: Colors.black,
                                      size: WidthSize*(25.sp/392.72),
                                    ),
                                  Text('  $livN'+' '+'$livP',
                                    style: TextStyle(fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),),
                                ],
                              ),
                            )
                          ),

                          SizedBox(
                            height:HeightSize*(15.h/803.63),
                          ),
                          Card(

                              child:SizedBox(
                                height: HeightSize*(50.23.h/803.63) ,
                                width: WidthSize*(305.45.h/392.72) ,
                                child: Row(
                                  children: [
                                    Text(' '),
                                    Icon(
                                      MdiIcons.email,
                                      color: Colors.black,
                                      size:WidthSize*(25.sp/392.72),
                                    ),
                                    Text(' i.nedjaa@gmail.com',
                                      style: TextStyle(fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              )
                          ),

                          SizedBox(
                            height: HeightSize*(15.h/803.63),
                          ),
                          Card(

                              child:SizedBox(
                                height: HeightSize*(50.23.h/803.63) ,
                                width: WidthSize*(305.45.h/392.72) ,
                                child: Row(
                                  children: [
                                    Text(' '),
                                    Icon(
                                      MdiIcons.phone,
                                      color: Colors.black,
                                      size:WidthSize*(25.sp/392.72),
                                    ),
                                    Text('  '+'$livPh',
                                      style: TextStyle(fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              )
                          ),
                          SizedBox(
                            height: HeightSize*(15.h/803.63),
                          ),
                          Card(

                              child:SizedBox(
                                height: HeightSize*(50.23.h/803.63) ,
                                width: WidthSize*(305.45.h/392.72) ,
                                child: Row(
                                  children: [
                                    Text(' '),
                                    Icon(
                                      MdiIcons.identifier,
                                      color: Colors.black,
                                      size:WidthSize*(25.sp/392.72),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (context)=> historiques() )
                                        );
                                      },
                                      child: Text('  '+'$livI',
                                      style: TextStyle(fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold),),
                                    )
                                  ],

                                ),
                              )
                          ),
                          SizedBox(
                            height:HeightSize*(100.h/803.63),
                          ),
                        ]),

              ])
           )
        );

  }
  Widget ImageProfile (){
    double WidthSize=MediaQuery.of(context).size.width;
    double HeightSize=MediaQuery.of(context).size.height;
    return Center(
      child:
      Stack (
        children: [
          CircleAvatar(
            radius: WidthSize*(50.sp/392.72),
            backgroundImage:
            _imageFile == null ?
            AssetImage("images/pic.jpg")
                : FileImage(File(_imageFile.path)) as ImageProvider,
          ),
          Positioned(
            right: WidthSize*(5.w/392.72) ,
            bottom: HeightSize*(5.h/803.63),

            child:
            Material (
              color: Colors.transparent ,
              child: InkWell(
                onTap: (){
                  showModalBottomSheet(
                    context: context,
                    builder: ((builder) => change()),
                  );


                },
                child:
                CircleAvatar(
                  radius: WidthSize*(15.sp/392.72),
                  backgroundColor:Colors.grey ,
                  child: Icon(
                    Icons.camera_alt ,
                    color: Colors.black,
                    size: WidthSize*(15.sp/392.72),
                  ),
                ),

              ),
            ),
          )

        ],
      ) ,
    );
  }
  Widget change (){

    double WidthSize=MediaQuery.of(context).size.width;
    double HeightSize=MediaQuery.of(context).size.height;
    return
      Container(
        height: HeightSize*(200.h/803.63),
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        // decoration: BoxDecoration(
        //   color: Colors.black12),
        // borderRadius: BorderRadius.circular(25.w)),
        child:
        Column (
          children: [
            SizedBox(
              height: HeightSize*(15.h/803.63),
            ),

            Text("Changer votre photo de profile",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: WidthSize*(18.sp/392.72),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(
              height:  HeightSize*(12.h/803.63),
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      pickpicture(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt_outlined,
                      size: WidthSize*(18.sp/392.72),

                    )),
                SizedBox(
                  width: WidthSize*(4.w/392.72),

                ),
                GestureDetector(
                  onTap: (){pickpicture(ImageSource.camera);},
                  child: Text("Prendre une photo",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: WidthSize*(13.sp/392.72),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ) ,

              ],),
            SizedBox(
              height: HeightSize*(4.h/803.63),
            ),
            Row(

                children: [

                  IconButton(
                      onPressed: () {
                        pickpicture(ImageSource.gallery);
                      },
                      icon: Icon(Icons.image,
                        size: WidthSize*(18.sp/392.72),

                      )),
                  SizedBox(
                    width: WidthSize*(4.w/392.72),

                  ),
                  GestureDetector(
                    onTap: (){pickpicture(ImageSource.gallery);},
                    child: Text("importer une photo",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: WidthSize*(13.sp/392.72),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ) ,
                ]
            )
          ],
        ),
      );

  }
  void pickpicture (ImageSource source)async {
    final pickedFile = await picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }
}