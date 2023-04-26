import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:taxi_application/screens/auth/ragisterScreen.dart';
import 'package:taxi_application/screens/homeScreen.dart';
import 'package:taxi_application/screens/splash/splash1.dart';
import 'package:taxi_application/screens/splash/splash2.dart';
import 'package:taxi_application/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/SignUp.png'),
                  fit: BoxFit.fill)),
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40),
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.jpg'))),
                  ),
                  SizedBox(height: 100),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      decoration: textInputDecoration.copyWith(
                        hintText: 'User Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                    child: TextField(
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                      decoration: textInputDecoration.copyWith(
                        hintText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        decoration: TextDecoration.underline),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.blueGrey,
                      ),
                      child: Center(
                          child: Text(
                        'Log in As User',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: Center(
                          child: Text(
                        'Log in As User',
                        style: TextStyle(color: Colors.black),
                      )),
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                      child: Text(
                    'New User ?Ragister!',
                    style: TextStyle(color: Colors.white),
                  ) ,onTap: () {
                    Get.to(RagisterScreen());
                  },)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
