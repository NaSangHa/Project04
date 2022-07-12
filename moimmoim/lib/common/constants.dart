import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projectapp/common/color_constants.dart';

class Constants {
  static List<Icon> iconList = [
    Icon(
      Icons.mail_outline,
      color: ColorConstants.kwhiteColor,
    ),
    Icon(
      FontAwesomeIcons.paypal,
      color: ColorConstants.kwhiteColor,
    ),
    Icon(
      CupertinoIcons.settings,
      color: ColorConstants.kwhiteColor,
    ),
  ];

  static List<int> amountList = [
    2010,
    12010,
    232010,
  ];

  static List<String> strList = [
    "1 \n Month",
    "6 \n Month",
    "1 \n Year",
  ];
  static InputDecoration buildInputDecoration() {
  return InputDecoration(
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.black26)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color(0xff69639F), width: 2.0)),
      );
  }
}
