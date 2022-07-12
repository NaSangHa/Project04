import 'package:flutter/material.dart';

class ColorConstants {
  static const kwhiteColor = Colors.white;
  static const kblackColor = Colors.black;
  static const korangeColor = Color(0xfffe752f);
  static const kgreyColor = Color(0xff909090);
  static const gblackColor = Colors.black87;
  static const cblackColor = Color(0xFF313131);
  static const corangeColor = Color(0xffdd601e);
  static const cpurpleColor = Color.fromARGB(255, 118, 3, 122);
  static const spurpleColor = Colors.purple;
  static const sblueColor = Colors.lightBlue;

  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0x05000000),
      100: Color(0x10000000),
      200: Color(0x20000000),
      300: Color(0x30000000),
      400: Color(0x40000000),
      500: Color(0x50000000),
      600: Color(0x60000000),
      700: Color(0x70000000),
      800: Color(0x80000000),
      900: Color(_blackPrimaryValue),
    },
  );
  static const int _blackPrimaryValue = 0xFF000000;

  static const MaterialColor primaryWhite = MaterialColor(
    _whitePrimaryValue,
    <int, Color>{
      50: Color(0x00FFFFFF),
      100: Color(0x10FFFFFF),
      200: Color(0x20FFFFFF),
      300: Color(0x30FFFFFF),
      400: Color(0x40FFFFFF),
      500: Color(0x50FFFFFF),
      600: Color(0x60FFFFFF),
      700: Color(0x70FFFFFF),
      800: Color(0x80FFFFFF),
      900: Color(_whitePrimaryValue),
    },
  );
  static const int _whitePrimaryValue = 0xFFFFFFFF;
}
