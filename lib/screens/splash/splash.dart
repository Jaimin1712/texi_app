/*
import 'package:flutter/material.dart';
import 'package:taxi_application/screens/splash/splash1.dart';
import 'package:taxi_application/screens/splash/splash2.dart';
import 'package:taxi_application/screens/splash/splash3.dart';
import 'package:taxi_application/screens/splash/splash4.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashOneState();
}

class _SplashOneState extends State<Splash> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
    Splash1(),
    Splash2(),
    Splash3(),
    Splash4(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _activePage = page;
                });
              },
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 100,
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      _pages.length,
                          (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        */
/*child: InkWell(
                          onTap: () {
                            _pageController.animateToPage(index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                        ),*//*

                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
