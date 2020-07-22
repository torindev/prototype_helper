import 'dart:math';

import 'package:prototype_helper/src/female/female_names.dart';
import 'package:prototype_helper/src/female/female_photos.dart';
import 'package:prototype_helper/src/lorem_ipsum/lorem_ipsum.dart';
import 'package:prototype_helper/src/male/male_names.dart';
import 'package:prototype_helper/src/male/male_photos.dart';
import 'package:prototype_helper/src/most_popular_surnames_us.dart';

/// Returns a random surname from kSurnames
String get randomSurname => kSurnames[Random().nextInt(kSurnames.length)];

/// The same as randomSurname, returns a random surname from kSurnames
String get randomLastName => kSurnames[Random().nextInt(kSurnames.length)];

/// Returns a random paragraph of Lorem Ipsum text
String get randomLoremIpsumParagraph =>
    kLoremIpsumParagraphs[Random().nextInt(kLoremIpsumParagraphs.length)];

/// Returns list of paragraphs lorem ipsum text
List<String> get loremIpsumParagraphs => [...kLoremIpsumParagraphs];

/// Combine of all lorem ipsum paragraphs to whole String, separate by spaces
String get loremIpsumFullTextSeparatedBySpaces {
  String result = '';
  for (String p in kLoremIpsumParagraphs) {
    result += '$p ';
  }
  return result.trim();
}

/// Combine of all lorem ipsum paragraphs to whole String, separate by line break
String get loremIpsumFullTextSeparatedByLineBreak {
  String result = '';
  for (String p in kLoremIpsumParagraphs) {
    result += '$p\n\n';
  }
  return result.trim();
}

/// Returns lorem ipsum String, limited by words (use loremIpsumFullTextSeparatedBySpaces as foundation)
String getLoremIpsumByWordsCount(int count) {
  String result = '';
  List<String> words = loremIpsumFullTextSeparatedBySpaces.split(' ');
  for (int i = 0; i < count; i++) {
    result += '${words[i]} ';
  }
  return result.trim();
}

/// Returns random female name
String get randomFemaleName =>
    kFemaleNames[Random().nextInt(kFemaleNames.length)];

/// Returns random female full name
String get randomFemaleFullName => '$randomFemaleName $randomSurname';

/// Returns random female photo (small)
String get randomFemalePhotoSmall =>
    kFemalePhotosSmall[Random().nextInt(kFemalePhotosSmall.length)];

/// Returns random female photo (big)
String get randomFemalePhotoBig =>
    kFemalePhotosBig[Random().nextInt(kFemalePhotosBig.length)];

/// Returns list of female names
List<String> get femaleNamesList => [...kFemaleNames];

/// Returns list of female photos (small)
List<String> get femalePhotosSmallList => [...kFemalePhotosSmall];

/// Returns list of female photos (big)
List<String> get femalePhotosBigList => [...kFemalePhotosBig];

/// Returns pair of female photos ([0] - small, [1] - big)
List<String> getFemaleSmallAndBigRandomPhotos() {
  int index = Random().nextInt(kFemalePhotosSmall.length);
  List<String> result = [];
  result.add(getFemaleSmallPhoto(index));
  result.add(getFemaleBigPhoto(index));
  return result;
}

/// returns small female photo by index
String getFemaleSmallPhoto(int index) {
  String result = '';
  try {
    result = kFemalePhotosSmall[index];
  } catch (error) {}
  return result;
}

/// returns big female photo by index
String getFemaleBigPhoto(int index) {
  String result = '';
  try {
    result = kFemalePhotosBig[index];
  } catch (error) {}
  return result;
}

/// returns random male name
String get randomMaleName => kMaleNames[Random().nextInt(kMaleNames.length)];

/// returns random male full name
String get randomMaleFullName => '$randomMaleName $randomSurname';

/// returns random male photo (small)
String get randomMalePhotoSmall =>
    kMalePhotosSmall[Random().nextInt(kMalePhotosSmall.length)];

/// returns random male photo (big)
String get randomMalePhotoBig =>
    kMalePhotosBig[Random().nextInt(kMalePhotosBig.length)];

/// returns list of male names
List<String> get maleNamesList => [...kMaleNames];

/// returns list of male photos (small)
List<String> get malePhotosSmallList => [...kMalePhotosSmall];

/// returns list of male photos (big)
List<String> get malePhotosBigList => [...kMalePhotosBig];

/// Returns pair of male photos ([0] - small, [1] - big)
List<String> getMaleSmallAndBigRandomPhotos() {
  int index = Random().nextInt(kMalePhotosSmall.length);
  List<String> result = [];
  result.add(getMaleSmallPhoto(index));
  result.add(getMaleBigPhoto(index));
  return result;
}

/// returns male small photo by index
String getMaleSmallPhoto(int index) {
  String result = '';
  try {
    result = kMalePhotosSmall[index];
  } catch (error) {}
  return result;
}

/// returns male big photo by index
String getMaleBigPhoto(int index) {
  String result = '';
  try {
    result = kMalePhotosBig[index];
  } catch (error) {}
  return result;
}
