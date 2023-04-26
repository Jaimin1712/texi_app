import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:taxi_application/AppConfig.dart';
import 'package:taxi_application/constants/AppColors.dart';
import 'package:taxi_application/flavors/flavorObject/FlavorValues.dart';
import 'package:taxi_application/main.dart';

void main() async {
  FlavorValues flavorValues = FlavorValues();
  var selectedFlavor = jsonDecode(flavorValues.jrTransportation);
  AppColors().changeAppTheme(AppColors.JRTRANSPORTATION);

  AppConfig jrTransportationConfig = AppConfig(
      flavor: selectedFlavor["appName"],
      appName: selectedFlavor["flavor"],
      imagePath: selectedFlavor["folder"]);

  Widget app = await initializeApp(jrTransportationConfig);
  runApp(app);
}
