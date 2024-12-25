import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';

class Challenge2 {
  static String doXorCombination(String hexString1, String hexString2) {
    if (hexString1.length != hexString2.length) {
      throw ArgumentError();
    }

    final Uint8List bytes1 = hex.decode(hexString1) as Uint8List;
    final Uint8List bytes2 = hex.decode(hexString2) as Uint8List;
    final Uint8List xorCombination = Uint8List(bytes1.length);

    for (var i = 0; i < xorCombination.length; i++) {
      xorCombination[i] = bytes1[i] ^ bytes2[i];
    }

    return hex.encode(xorCombination);
  }
}
