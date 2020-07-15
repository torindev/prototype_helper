library prototype_helper;

import 'dart:math';

import 'package:prototype_helper/src/female/female_names.dart';
import 'package:prototype_helper/src/female/female_photos.dart';
import 'package:prototype_helper/src/lorem_ipsum/lorem_ipsum.dart';
import 'package:prototype_helper/src/male/male_names.dart';
import 'package:prototype_helper/src/male/male_photos.dart';
import 'package:prototype_helper/src/most_popular_surnames_us.dart';

// COMMON
String get randomSurname => kSurnames[Random().nextInt(kSurnames.length)];
String get randomLastName => kSurnames[Random().nextInt(kSurnames.length)];
String get randomLoremIpsumParagraph =>
    kLoremIpsumParagraphs[Random().nextInt(kLoremIpsumParagraphs.length)];
List<String> get loremIpsumParagraphs => [...kLoremIpsumParagraphs];
String get loremIpsumFullTextSeparatedBySpaces {
  String result = '';
  for (String p in kLoremIpsumParagraphs) {
    result += '$p ';
  }
  return result.trim();
}

String get loremIpsumFullTextSeparatedByLineBreak {
  String result = '';
  for (String p in kLoremIpsumParagraphs) {
    result += '$p\n\n';
  }
  return result.trim();
}

String getLoremIpsumByWordsCount(int count) {
  String result = '';
  List<String> words = loremIpsumFullTextSeparatedBySpaces.split(' ');
  for (int i = 0; i < count; i++) {
    result += '${words[i]} ';
  }
  return result.trim();
}

// FEMALE
String get randomFemaleName =>
    kFemaleNames[Random().nextInt(kFemaleNames.length)];
String get randomFemaleFullName => '$randomFemaleName $randomSurname';
String get randomFemalePhotoSmall =>
    kFemalePhotosSmall[Random().nextInt(kFemalePhotosSmall.length)];
String get randomFemalePhotoBig =>
    kFemalePhotosBig[Random().nextInt(kFemalePhotosBig.length)];

List<String> get femaleNamesList => [...kFemaleNames];
List<String> get femalePhotosSmallList => [...kFemalePhotosSmall];
List<String> get femalePhotosBigList => [...kFemalePhotosBig];

// MALE
String get randomMaleName => kMaleNames[Random().nextInt(kMaleNames.length)];
String get randomMaleFullName => '$randomMaleName $randomSurname';
String get randomMalePhotoSmall =>
    kMalePhotosSmall[Random().nextInt(kMalePhotosSmall.length)];
String get randomMalePhotoBig =>
    kMalePhotosBig[Random().nextInt(kMalePhotosBig.length)];

List<String> get maleNamesList => [...kMaleNames];
List<String> get malePhotosSmallList => [...kMalePhotosSmall];
List<String> get malePhotosBigList => [...kMalePhotosBig];
