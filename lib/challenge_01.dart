import 'dart:convert';
import 'dart:typed_data';

import 'package:convert/convert.dart';

class Challenge1 {
  static String hexToBase64(String hexStr) {
    // Uint8List is the best way to represent bytes
    // https://stackoverflow.com/questions/69090275/uint8list-vs-listint-what-is-the-difference
    final Uint8List bytes = hex.decode(hexStr) as Uint8List;
    final String base64Str = base64.encode(bytes);
    return base64Str;
  }
}
