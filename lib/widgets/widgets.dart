import 'package:flutter/material.dart';

SkipBtn() {
  return Container(
    height: 30,
    width: 70,
    color: Colors.transparent,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )),
    ),
  );
}

NextBtn() {
  return Container(
    height: 50,
    width: 80,
    color: Colors.transparent,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              "Next",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          )),
    ),
  );
}

SignUpBtn() {
  return Container(
    height: 50,
    width: 200,
    color: Colors.transparent,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )),
    ),
  );
}

/*const textInputDecoration = InputDecoration (
  labelStyle: TextStyle(color: Colors.black , fontSize: 20),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey , width: 2) ),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey , width: 2) ),
);*/

const textInputDecoration = InputDecoration(

  labelStyle: TextStyle(color: Colors.pink, fontSize: 20),hintStyle: TextStyle(color: Colors.white),
  focusedBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
  enabledBorder:
      OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 2)),
);

appBar() {
  return AppBar(
    toolbarHeight: 80, // Set this height
    flexibleSpace: Container(
      color: Colors.black,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Entertainment',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/appbar_map.png')))),
              Container(
                height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/layer.png'))))
            ],
          ),
        ],
      ),
    ),
  );
}
