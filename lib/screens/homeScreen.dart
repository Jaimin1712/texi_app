import 'package:flutter/material.dart';
import 'package:taxi_application/screens/drawerScreen.dart';
import 'package:taxi_application/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = WidgetsBinding.instance.window.physicalSize;
    double width = screenSize.width;
    double height = screenSize.height;

    return MaterialApp(
      home: Scaffold(
        appBar: appBar(),
        drawer: DrawerScreen(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.yellow,
                  width: double.infinity,
                  height: height / 15,
                  alignment: Alignment.center,
                  child: Text("Music",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  color: Colors.deepPurple,
                  width: double.infinity,
                  height: height / 15,
                  alignment: Alignment.center,
                  child: Text("News",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: height / 15,
                    alignment: Alignment.center,
                    child: Text("Events",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))),
                Container(
                    color: Colors.pink,
                    width: double.infinity,
                    height: height / 15,
                    alignment: Alignment.center,
                    child: Text("Restautants",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))),
                Container(
                    color: Colors.yellow,
                    width: double.infinity,
                    height: height / 15,
                    alignment: Alignment.center,
                    child: Text("Social Media",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
