import 'package:cryptopals_dart/challenge_02.dart';
import 'package:test/test.dart';

void main() {
  group('Challenge 2', () {
    /// This test is not working
    // test('Hex strings have different length', () {
    //   const hexString1 = '01f010100061a024b53535009181c';
    //   const hexString2 = '686974207468652062756c6c277320657965';
    //   final result = Challenge2.doXorCombination(hexString1, hexString2);
    //   expect(result, throwsA(isA<ArgumentError>));
    // });

    test('Hex to Base64 conversion', () {
      const hexString1 = '1c0111001f010100061a024b53535009181c';
      const hexString2 = '686974207468652062756c6c277320657965';
      const expectedXorCombination = '746865206b696420646f6e277420706c6179';
      final result = Challenge2.doXorCombination(hexString1, hexString2);

      expect(result, equals(expectedXorCombination));
    });
  });
}
