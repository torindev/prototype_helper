# prototype_helper

A small package, that provides various test data such as first names, last names, photographs, lorem ipsum etc. This can be useful when prototyping an application without a server side (because server side not ready yet), or when creating a project for test drive some features and you lazy to use Rest API

## Getting Started

The package provides a convenient API for getting test data.
**Available methods:**

```dart
// COMMON
String get randomSurname;
String get randomLastName;
String get randomLoremIpsumParagraph;
List<String> get loremIpsumParagraphs;
String get loremIpsumFullTextSeparatedBySpaces;
String get loremIpsumFullTextSeparatedByLineBreak;
String getLoremIpsumByWordsCount(int count);

// FEMALE
String get randomFemaleName;
String get randomFemaleFullName;
String get randomFemalePhotoSmall;
String get randomFemalePhotoBig;
List<String> get femaleNamesList;
List<String> get femalePhotosSmallList;
List<String> get femalePhotosBigList;
List<String> getFemaleSmallAndBigRandomPhotos(); // Returns pair of female photos ([0] - small, [1] - big)
String getFemaleSmallPhoto(int index);
String getFemaleBigPhoto(int index);

// MALE
String get randomMaleName;
String get randomMaleFullName;
String get randomMalePhotoSmall;
String get randomMalePhotoBig;
List<String> get maleNamesList;
List<String> get malePhotosSmallList;
List<String> get malePhotosBigList;
List<String> getMaleSmallAndBigRandomPhotos(); // Returns pair of male photos ([0] - small, [1] - big)
String getMaleSmallPhoto(int index);
String getMaleBigPhoto(int index);
```

Using photos from [https://www.pexels.com/](https://www.pexels.com/), **such authors:**

```
Guilherme Almeida from Pexels, Vinicius Wiesehofer from Pexels, Ketut Subiyanto from Pexels, 
Moose Photos from Pexels, Andrea Piacquadio from Pexels, Daniel Xavier from Pexels, 
Matheus Bertelli from Pexels, Godisable Jacob from Pexels, Arianna Jadé from Pexels, 
Elle Hughes from Pexels, Wallace Chuck from Pexels, ArtHouse Studio from Pexels, 
Chloe Kala from Pexels, Tim Savage from Pexels, Simon Robben from Pexels, 
Justin Shaifer from Pexels
```
