import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'acceuil.dart';
import 'package:deliverymanapp/commande.dart';
class  Livrer extends StatefulWidget {
  const  Livrer({Key? key}) : super(key: key);

  @override
  State< Livrer> createState() => _LivrerState();
}

class _LivrerState extends State< Livrer> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( child: Scaffold(body :
    Acceuil(etape: 'Aller au restaurant'  , destination: commande(), ),
    ),);
  }
}