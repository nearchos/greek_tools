import 'package:greek_tools/greek_tools.dart';

/// Transforming Greek words and sentences into Greeklish (i.e., the
/// equivalent text using the Latin alphabet.)
/// Based on ISO 843 standard (which is identical to ELOT 743).
///
void main() {
  // convert a string containing Greek to the equivalent with Latin letters
  print(toGreeklish('Γειά σου Κόσμε')); // prints 'Geia sou Kosme'

  // optionally, set [withAccents] to output Greeklish with accents
  String greeklish = toGreeklish('Γειά σου Κόσμε', withAccents: true);
  print(greeklish); // prints 'Geiá sou Kósme'

  // You can check if a given word is in all-capital Greek letters
  print(isGreekWordInAllCaps('Όχι Όλα Κεφαλαία')); // prints 'false'

  // There is the option to remove the accents from text.
  // This could be useful if you need to normalize text before searching.
  print(removeAccents('Επίθετο, Όνομα')); // prints 'Επιθετο, Ονομα'

  // There is also the option to remove the accents from Greeklish text.
  // Again, this could be useful for searching.
  print(removeAccentsFromGreeklish('Énas Kósmos')); // prints 'Enas Kosmos'

  // Last, you can check if a string contains Greek. This function returns
  // true if at least one of the input characters is of the Greek alphabet.
  print(containsGreek('word in Greek is λέξη')); // prints 'true'
  print(containsGreek('no Greek here')); // prints 'φαλσε'

  /// You can see all the available functions with their documentation in the
  /// "src/greeklish.dart" file.
  /// Finally, you can see more examples in the scripts under /test.
}
