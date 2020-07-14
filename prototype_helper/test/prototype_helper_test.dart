import 'package:flutter_test/flutter_test.dart';

import 'package:prototype_helper/prototype_helper.dart';
import 'package:prototype_helper/src/female/female_names.dart';
import 'package:prototype_helper/src/male/male_names.dart';

void main() {
  test('random female name', () {
    expect(kFemaleNames.length, 500);
    for (int i = 0; i < kFemaleNames.length; i++) {
      expect(kFemaleNames[i].contains(','), false);
    }
  });

  test('random male name', () {
    expect(kMaleNames.length, 256);
    for (int i = 0; i < kMaleNames.length; i++) {
      expect(kMaleNames[i].contains(','), false);
    }
  });
}
