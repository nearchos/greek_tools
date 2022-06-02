import 'package:greek_tools/greek_tools.dart';

void main() {
  print('Transforming Greek words and sentences into Greeklish (i.e., the'
      'equivalent text using the Latin alphabet.\n');

  print('To transform a word like "Κόσμος", simply use:');
  print('toGreeklish("Κόσμος") -> "${toGreeklish('Κόσμος')}"\n');

  print('If needed, you can request to transform to Greeklish with accents:');
  print('toGreeklish("Κόσμος", withAccents: true) -> "${toGreeklish('Κόσμος', withAccents: true)}"\n');

  print('You can check if a given [word] is in all capital Greek letters:');
  print('isGreekWordInAllCaps("Όχι Κεφαλαία") -> ${isGreekWordInAllCaps("Όχι Κεφαλαία")}\n');

  print('There is also the option to remove the accents from text. This could be useful when searching.');
  print('removeAccents("Επίθετο, Όνομα") -> ${removeAccents('Επίθετο, Όνομα')}\n');

  print('Last, you can check if a string contains Greek. This function returns'
      ' true if at least one of the input characters is of the Greek alphabet.');
  print('containsGreek("λέξη") -> ${containsGreek("λέξη")}\n');

  print('You can see all the available functions with their documentation in the "greeklish.dart" file.');
  print('Finally, you can also see more examples in the "greek_tools_test.dart" script.');
}