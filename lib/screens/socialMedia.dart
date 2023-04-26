import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/socialMediaBG.png'))),
          child: Column(
            children: [
              Container(width: double.infinity,height: 100,child: ImageIcon(AssetImage("assets/images/twitter.png")))
            ],
          ),
        ),
      ),
    );
  }
}
