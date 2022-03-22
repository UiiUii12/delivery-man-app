import 'package:flutter/material.dart';
class Autorisation extends StatefulWidget {
  const Autorisation({Key? key}) : super(key: key);

  @override
  _AutorisationState createState() => _AutorisationState();
}

class _AutorisationState extends State<Autorisation> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/Profile.png"),
                      fit: BoxFit.cover)),
            ),

          ),
        )
    );
  }
}
