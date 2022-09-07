 

import 'package:practice7/Constant/SVGandPNGimage.dart';

class ReturnImage {
  static String manualreturn(String? type) {
    if (type == "Sunny") {
      return sunny;
    } else if (type == "Patchy rain possible") {
      return rain;
    } else {
      return cloud2;
    }
  }
}
