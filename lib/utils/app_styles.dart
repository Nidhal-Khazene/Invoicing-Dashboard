import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/constants.dart';
import 'package:invoicing_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      color: kSecondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      color: kGreyColor,
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle bold16(BuildContext context) {
    return TextStyle(
      color: kSecondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      color: kGreyColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBold20(BuildContext context) {
    return TextStyle(
      color: kSecondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle medium16(BuildContext context) {
    return TextStyle(
      color: kSecondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      color: kGreyColor,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle semiBold24(BuildContext context) {
    return TextStyle(
      color: kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      color: kSecondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle medium20(BuildContext context) {
    return TextStyle(
      color: kSecondaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: kPrimaryFontFamily,
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tabletBreakPoint) {
    return width / 550;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
