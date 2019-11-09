
import 'dart:ui';

import 'package:flutter/material.dart';

class HexColor {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static int fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return int.parse(buffer.toString(), radix: 16);
  }

  static Color getColorFromHex(String hexString){
    return Color(fromHex(hexString));
  }
  static Map<int, Color> color = {
    50: Color.fromRGBO(43, 40, 124, .1),
    100: Color.fromRGBO(43, 40, 124, .2),
    200: Color.fromRGBO(43, 40, 124, .3),
    300: Color.fromRGBO(43, 40, 124, .4),
    400: Color.fromRGBO(43, 40, 124, .5),
    500: Color.fromRGBO(43, 40, 124, .6),
    600: Color.fromRGBO(43, 40, 124, .7),
    700: Color.fromRGBO(43, 40, 124, .8),
    800: Color.fromRGBO(43, 40, 124, .9),
    900: Color.fromRGBO(43, 40, 124, 1),
  };

  static MaterialColor colorCustom = MaterialColor(HexColor.fromHex("#2B287C"), color);

}