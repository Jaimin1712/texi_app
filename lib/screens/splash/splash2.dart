import 'package:flutter/material.dart';
import 'package:taxi_application/screens/splash/splash1.dart';

class Splash2 extends StatefulWidget {
   Splash2({Key? key}) : super(key: key);

  @override
  State<Splash2> createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          color: Colors.deepPurple,
        )
    );
  }
}
