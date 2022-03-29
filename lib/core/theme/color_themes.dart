import 'dart:ui';

class ColorTheme {
  static Color primary = HexColor("#fc5daf");
  static Color primaryDark = HexColor("#fe0084");
  static Color primaryLight = HexColor("#fbbcde");
  static Color primarySmooth = HexColor("#fde4f2");

  static Color secondary = HexColor("#3c3c3c");
  static Color secondaryLight = HexColor("#979797");
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
