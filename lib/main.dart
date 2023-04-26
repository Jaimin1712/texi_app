import 'package:flutter/material.dart';
import 'package:taxi_application/AppConfig.dart';
import 'package:taxi_application/constants/AppColors.dart';
import 'package:taxi_application/screens/splash/splash1.dart';
import 'package:taxi_application/screens/splash/splash2.dart';
import 'package:taxi_application/screens/splash/splash3.dart';
import 'package:taxi_application/screens/splash/splash4.dart';

Future<Widget> initializeApp(AppConfig appConfig) async {
  WidgetsFlutterBinding.ensureInitialized();
  return MyApp(appConfig);
}

class MyApp extends StatelessWidget {
  final AppConfig appConfig;
  const MyApp(this.appConfig, {super.key});

  Widget _flavorBanner(Widget child) {
    return Banner(
      message: appConfig.flavor,
      location: BannerLocation.topEnd,
      color: AppColors.color1,
      textStyle: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 14.0, letterSpacing: 1.0),
      child: child,
    );
  }

  Map<int, Color> getSwatch(Color color) {
    final hslColor = HSLColor.fromColor(color);
    final lightness = hslColor.lightness;

    const lowDivisor = 6;
    const highDivisor = 5;

    final lowStep = (1.0 - lightness) / lowDivisor;
    final highStep = lightness / highDivisor;

    return {
      50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
      100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
      200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
      300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
      400: (hslColor.withLightness(lightness + lowStep)).toColor(),
      500: (hslColor.withLightness(lightness)).toColor(),
      600: (hslColor.withLightness(lightness - highStep)).toColor(),
      700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
      800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
      900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
    };
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MaterialApp materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appConfig.appName,
      theme: ThemeData(
          primarySwatch: MaterialColor(
              AppColors.color2.value, getSwatch(AppColors.color2)),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: _flavorBanner(MyHomePage(
          title: appConfig.appName,
          image: appConfig.imagePath,
          flavor: appConfig.flavor)),
    );
    return materialApp;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.image, required this.flavor});

  final String title;
  final String image;
  final String flavor;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _controller = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: [
        Splash1(),
        Splash2(),
        Splash3(),
        Splash4(),
      ],
    );
  }
}
