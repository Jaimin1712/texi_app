import 'package:flutter/material.dart';

//==========================Image Asset==============================================
Widget customImageAsset(
    {imageName, height, width, scale, color, opacity, fit, colorBlendMode, filterQuality,
      alignment}) {
  return Image.asset(
    imageName,
    height: height,
    width: width,
    scale: scale,
    color: color,
    opacity: opacity,
    fit: fit ?? BoxFit.cover,
    colorBlendMode: colorBlendMode,
    alignment: alignment ?? Alignment.center,
    filterQuality: filterQuality ?? FilterQuality.none ,
  );
}

//============================Asset Image============================================
customAssetImage({imageName}) {
  return AssetImage(imageName);
}
