library prototype_helper;

import 'dart:math';

import 'package:prototype_helper/src/female_names.dart';
import 'package:prototype_helper/src/male_names.dart';
import 'package:prototype_helper/src/most_popular_surnames_us.dart';

String get randomSurname => kSurnames[Random().nextInt(kSurnames.length)];

String get randomFemaleName =>
    kFemaleNames[Random().nextInt(kFemaleNames.length)];
String get randomFemaleFullName => '$randomFemaleName $randomSurname';

String get randomMaleName => kMaleNames[Random().nextInt(kMaleNames.length)];
String get randomMaleFullName => '$randomMaleName $randomSurname';
