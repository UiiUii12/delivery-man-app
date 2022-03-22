import 'package:deliverymanapp/connexion.dart';
import 'package:deliverymanapp/recuperation.dart';
import 'package:deliverymanapp/recuperation2.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
import 'dart:async';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(milliseconds: 1500),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Connexion())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffb80000),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'images/Oussama_Express-removebg-preview.png')),
            ),
          ),
        ),
      ),
    );
  }
}
