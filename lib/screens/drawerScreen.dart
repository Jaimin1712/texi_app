import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Drawer(
          width: double.infinity,
          backgroundColor: Colors.black,
          child: ListView(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Text(
                      "MENU",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  SizedBox(width: 150),
                  Container(
                      height: 60,
                      width: 60,
                      child: ImageIcon(
                          color: Colors.white,
                          size: 100,
                          AssetImage('assets/JRTransportation/appbar_map.png'))),
                  Container(
                      alignment: Alignment.bottomLeft,
                      height: 60,
                      width: 60,
                      child: ImageIcon(
                          color: Colors.white,
                          size: 100,
                          AssetImage('assets/images/layer.png'))),
                ],
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/JRTransportation/myProfile.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("My Profile",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Make A Trip",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Reserve A Trip",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Call Dispacher",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("My Trip History",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Payment Options",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Entertainment",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Social Media",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("My Settings",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              ListTile(
                leading: Container(
                  height: 25,
                  width: 25,
                  child: ImageIcon(
                    AssetImage('assets/images/pin.png'),
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                title: Text("Legal Terms",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              SizedBox(height: 60),
              Container(
                  width: 160,
                  height: 160,
                  child: Image(image: AssetImage('assets/images/logo.jpg'))),
              Container(
                alignment: Alignment.bottomCenter,
                height: 100,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/logo.jpg'))),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Joahna Rivas', style: TextStyle(fontSize: 20)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ImageIcon(
                                  color: Colors.white,
                                  size: 10,
                                  AssetImage('assets/images/pin.png')),
                              Text(
                                "Goa , India",
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      height: 90,
                      width: 90,
                      child: Row(
                        children: [
                          Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 20,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
