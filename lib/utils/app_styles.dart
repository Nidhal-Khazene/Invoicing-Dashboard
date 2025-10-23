import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static final TextStyle semiBold16 = TextStyle(
    color: kSecondaryColor,
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle regular12 = TextStyle(
    color: kGreyColor,
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle bold16 = TextStyle(
    color: kSecondaryColor,
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle regular16 = TextStyle(
    color: kGreyColor,
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle semiBold20 = TextStyle(
    color: kSecondaryColor,
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle medium16 = TextStyle(
    color: kSecondaryColor,
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle regular14 = TextStyle(
    color: kGreyColor,
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle semiBold24 = TextStyle(
    color: kPrimaryColor,
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle semiBold18 = TextStyle(
    color: kSecondaryColor,
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle medium20 = TextStyle(
    color: kSecondaryColor,
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: kPrimaryFontFamily,
    fontWeight: FontWeight.w500,
  );
}

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 550;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
