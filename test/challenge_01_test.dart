import 'package:cryptopals_dart/challenge_01.dart';
import 'package:test/test.dart';

void main() {
  group('Challenge 1', () {
    test('Hex to Base64 conversion', () {
      const hexInput =
          '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d';
      const expectedBase64 =
          'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t';
      final result = Challenge1.hexToBase64(hexInput);

      expect(result, equals(expectedBase64));
    });
  });
}
