
import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static Color fromRgba(int r, int g, int b, double a) {
    return Color.fromRGBO(r, g, b, a);
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class AppColors {
  static const primaryColor = Color(0xff6b9dfc);
  static const secondaryColor = Color(0xffa1c6fd);
  static const tertiaryColor = Color(0xff205cf1);
  static const blackColor = Color(0xff1a1d26);
  static  Color red = HexColor.fromHex('#F35555');
  static Color green = HexColor.fromHex('#4CD964');
  static Color grey = HexColor.fromHex('#8E8E93');
  static const greyColor = Color(0xffd9dadb);



}
