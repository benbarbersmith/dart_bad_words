library bad_words;

import 'word_list.dart';

/// Bad Word Filter
class Filter {
  /// isProfane returns a boolean value representing if the string provided contains a profane word
  static bool isProfane(String stringToTest) {
    final lowerCaseStringToTest = stringToTest.toLowerCase();
    return badwords.any((word) => lowerCaseStringToTest.contains(word));
  }

  /// replace tests a string, replacing bad words with an asterisk length string of equal length
  static String clean(String stringToObfuscate) {
    final listToTest = stringToObfuscate.split(' ');
    final clean = listToTest.map((e) {
      if (badwords.contains(e.toLowerCase())) {
        return ''.padLeft(e.length, '*');
      }
      return e;
    });

    return clean.join(' ');
  }
}
