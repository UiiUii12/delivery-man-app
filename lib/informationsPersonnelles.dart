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
class profile extends StatefulWidget {
  const profile ({Key? key}) : super(key: key);
  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
                            height:90.h,
                          ),


                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ImageProfile(),
                            ]),
                          SizedBox(height: 20.h,),
                          Text('Nedjaa Ines',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.sp,
                          )),
                          SizedBox(
                            height:50.h ,
                          ),
                          Card(

                            child:SizedBox(
                              height: MediaQuery.of(context).size.height*(1/16),
                              width: MediaQuery.of(context).size.width*(7/9),
                              child: Row(
                                children: [
                                  Text(' '),
                                  Icon(
                                      MdiIcons.account,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                  Text('  $livN'+' '+'$livP',
                                    style: TextStyle(fontFamily: 'Poppins',
                                        fontWeight: FontWeight.bold),),
                                ],
                              ),
                            )
                          ),

                          SizedBox(
                            height: 15.h,
                          ),
                          Card(

                              child:SizedBox(
                                height: MediaQuery.of(context).size.height*(1/16),
                                width: MediaQuery.of(context).size.width*(7/9),
                                child: Row(
                                  children: [
                                    Text(' '),
                                    Icon(
                                      MdiIcons.email,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                    Text(' i.nedjaa@gmail.com',
                                      style: TextStyle(fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              )
                          ),

                          SizedBox(
                            height: 15.h,
                          ),
                          Card(

                              child:SizedBox(
                                height: MediaQuery.of(context).size.height*(1/16),
                                width: MediaQuery.of(context).size.width*(7/9),
                                child: Row(
                                  children: [
                                    Text(' '),
                                    Icon(
                                      MdiIcons.phone,
                                      color: Colors.black,
                                      size: 25.sp,
                                    ),
                                    Text('  '+'$livPh',
                                      style: TextStyle(fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold),)
                                  ],
                                ),
                              )
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          Card(

                              child:SizedBox(
                                height: MediaQuery.of(context).size.height*(1/16),
                                width: MediaQuery.of(context).size.width*(7/9),
                                child: Row(
                                  children: [
                                    Text(' '),
                                    Icon(
                                      MdiIcons.identifier,
                                      color: Colors.black,
                                      size: 25.sp,
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
                            height: 100.h,
                          ),
                        ]),

              ])
           )
        );

  }
  Widget ImageProfile (){
    return Center(
      child:
      Stack (
        children: [
          CircleAvatar(
            radius: 50.sp,
            backgroundImage:
            _imageFile == null ?
            AssetImage("images/pic.jpg")
                : FileImage(File(_imageFile.path)) as ImageProvider,
          ),
          Positioned(
            right: 5.w ,
            bottom: 5.h,

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
                  radius: 15.sp,
                  backgroundColor:Colors.grey ,
                  child: Icon(
                    Icons.camera_alt ,
                    color: Colors.black,
                    size: 15.sp,
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

    return
      Container(
        height: 200.h,
        margin: EdgeInsets.symmetric(horizontal: 5.w),
        // decoration: BoxDecoration(
        //   color: Colors.black12),
        // borderRadius: BorderRadius.circular(25.w)),
        child:
        Column (
          children: [
            SizedBox(
              height: 15.h,
            ),

            Text("Changer votre photo de profile",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18.sp,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),

            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      pickpicture(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt_outlined,
                      size: 18.sp,

                    )),
                SizedBox(
                  width: 4.w,

                ),
                GestureDetector(
                  onTap: (){pickpicture(ImageSource.camera);},
                  child: Text("Prendre une photo",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ) ,

              ],),
            SizedBox(
              height: 4.h,
            ),
            Row(

                children: [

                  IconButton(
                      onPressed: () {
                        pickpicture(ImageSource.gallery);
                      },
                      icon: Icon(Icons.image,
                        size: 18.sp,

                      )),
                  SizedBox(
                    width: 4.w,

                  ),
                  GestureDetector(
                    onTap: (){pickpicture(ImageSource.gallery);},
                    child: Text("importer une photo",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13.sp,
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