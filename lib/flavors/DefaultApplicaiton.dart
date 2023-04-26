import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:taxi_application/AppConfig.dart';
import 'package:taxi_application/constants/AppColors.dart';
import 'package:taxi_application/flavors/flavorObject/FlavorValues.dart';
import 'package:taxi_application/main.dart';

void main() async {
  FlavorValues flavorValues = FlavorValues();
  var selectedFlavor = jsonDecode(flavorValues.defaultApplication);
  AppColors().changeAppTheme(AppColors.DEFAULTAPPLICATION);

  AppConfig jrTransportationConfig = AppConfig(
      flavor: selectedFlavor["flavor"],
      appName: selectedFlavor["appName"],
      imagePath: selectedFlavor["folder"]);

  Widget app = await initializeApp(jrTransportationConfig);
  runApp(app);
}
