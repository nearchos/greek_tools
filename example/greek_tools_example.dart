import 'package:greek_tools/greek_tools.dart';

/// Transforming Greek words and sentences into Greeklish (i.e., the
/// equivalent text using the Latin alphabet.)
/// Based on ISO 843 standard (which is identical to ELOT 743).
///
void main() {
  /// convert a string containing Greek to the equivalent with Latin letters
  print(toGreeklish('Γειά σου Κόσμε')); // prints 'Geia sou Kosme'

  String greeklish = toGreeklish('Γειά σου Κόσμε', withAccents: true);
  print(greeklish); // prints 'Geiá sou Kósme'

  print('You can check if a given word is in all-capital Greek letters:');
  print(isGreekWordInAllCaps('Όχι Όλα Κεφαλαία')); // prints 'false'

  print('There is the option to remove the accents from text.');
  print('This could be useful if you need to normalize text before searching.');
  print(removeAccents('Επίθετο, Όνομα')); // prints 'Επιθετο, Ονομα'

  print('There is also the option to remove the accents from Greeklish text.');
  print('Again, this could be useful for searching.');
  print(removeAccents('Énas Kósmos')); // prints 'Enas Kosmos'

  print('Last, you can check if a string contains Greek. This function returns'
      ' true if at least one of the input characters is of the Greek alphabet.');
  print(containsGreek('λέξη')); // prints 'true'

  /// You can see all the available functions with their documentation in the
  /// "src/greeklish.dart" file.
  /// Finally, you can see more examples in the scripts under /test.
}
