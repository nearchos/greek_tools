import 'package:greek_tools/greek_tools.dart';
import 'package:test/test.dart';

const List<String> greekWords = [
  "Νέαρχος",
  "ΝΈΑΡΧΟΣ",
  "Ουρανός",
  "ΟΥΡΑΝΌΣ",
  "Συλλαβή",
  "ΣΥΛΛΑΒΉ",
  "Διαλυτικά",
  "ΔΙΑΛΥΤΙΚΆ",
  "Άυλος",
  "ΆΥΛΟΣ",
  "Αυλός",
  "ΑΥΛΌΣ",
  "Φαΐ",
  "ΦΑΪ",
  "ΞΎΠΝΗΜΑ",
  "Ξύπνημα",
  "ΔΙΎΛΙΣΗ",
  "Διύλιση",
  "ΑΓΓΑΡΕΊΑ",
  "Αγγαρεία",
  "ΜΠΙΦΤΈΚΙΑ",
  "Μπιφτέκια",
  "ΕΥΓΝΩΜΟΣΎΝΗ",
  "Ευγνωμοσύνη",
  "ΕΥΘΕΊΑ",
  "Ευθεία",
  "Αυτή είναι μια δοκιμαστική πρόταση. Είναι καλή;",
];

const List<String> expectedGreeklishWordsSimplified = [
  "Nearchos",
  "NEARCHOS",
  "Ouranos",
  "OURANOS",
  "Syllavi",
  "SYLLAVI",
  "Dialytika",
  "DIALYTIKA",
  "Aylos",
  "AYLOS",
  "Avlos",
  "AVLOS",
  "Fai",
  "FAI",
  "XYPNIMA",
  "Xypnima",
  "DIYLISI",
  "Diylisi",
  "ANGAREIA",
  "Angareia",
  "BIFTEKIA",
  "Biftekia",
  "EVGNOMOSYNI",
  "Evgnomosyni",
  "EFTHEIA",
  "Eftheia",
  "Afti einai mia dokimastiki protasi. Einai kali?",
];

const List<String> expectedGreeklishWordsWithAccents = [
  "Néarchos",
  "NÉARCHOS",
  "Ouranós",
  "OURANÓS",
  "Syllavī́",
  "SYLLAVĪ́",
  "Dialytiká",
  "DIALYTIKÁ",
  "Áylos",
  "ÁYLOS",
  "Avlós",
  "AVLÓS",
  "Faḯ",
  "FAÏ",
  "XÝPNĪMA",
  "Xýpnīma",
  "DIÝLISĪ",
  "Diýlisī",
  "ANGAREÍA",
  "Angareía",
  "BIFTÉKIA",
  "Biftékia",
  "EVGNŌMOSÝNĪ",
  "Evgnōmosýnī",
  "EFTHEÍA",
  "Eftheía",
  "Aftī́ eínai mia dokimastikī́ prótasī. Eínai kalī́?",
];

void main() {
  group('Greek Tools tests', () {

    setUp(() {
      // setup goes here.
    });

    test('Test words',() {
      bool succeed = true;
      for(int i = 0; i < greekWords.length; i++) {
        final String greekWord = greekWords[i];
        final String greeklishWord = toGreeklish(greekWord);
        final bool match = greeklishWord == expectedGreeklishWordsSimplified[i];
        print('$greekWord -> $greeklishWord [${expectedGreeklishWordsSimplified[i]} ] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
    });

    test('Test words with accents',() {
      bool succeed = true;
      for(int i = 0; i < greekWords.length; i++) {
        final String greekWord = greekWords[i];
        final String greeklishWord = toGreeklish(greekWord, withAccents: true);
        final bool match = greeklishWord == expectedGreeklishWordsWithAccents[i];
        print('$greekWord -> $greeklishWord [ ${expectedGreeklishWordsWithAccents[i]} ] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
    });

    test('Test remove lower case accents',() {
      final Map<String,String> testTexts = {};
      testTexts["γειά σου κόσμε! ελπίζω να είναι όλα καλά."] = "γεια σου κοσμε! ελπιζω να ειναι ολα καλα.";
      testTexts["Η διήθιση είναι ένα ασυνήθιστο ρήμα και το ύψιλον ένα ασυνήθιστο γράμμα."] = "Η διηθιση ειναι ενα ασυνηθιστο ρημα και το υψιλον ενα ασυνηθιστο γραμμα.";
      testTexts["Τα αϊδόνια δεν σε αφήνουνε να κοιμηθείς στις Πλάτρες"] = "Τα αιδονια δεν σε αφηνουνε να κοιμηθεις στις Πλατρες";
      testTexts["Έξω από την πόλη βρίσκονται τα δέντρα"] = "Έξω απο την πολη βρισκονται τα δεντρα";

      bool succeed = true;
      for(final String lowercaseTextWithAccents in testTexts.keys) {
        final String lowercaseTextWithoutAccents = removeAccentsLowercase(lowercaseTextWithAccents);
        final bool match = lowercaseTextWithoutAccents == testTexts[lowercaseTextWithAccents];
        print('$lowercaseTextWithAccents -> $lowercaseTextWithoutAccents [${testTexts[lowercaseTextWithAccents]}] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
    });

    test('Test remove upper case accents',() {
      final Map<String,String> testTexts = {};
      testTexts["ΓΕΙΆ ΣΟΥ ΚΌΣΜΕ! ΕΛΠΊΖΩ ΝΑ ΕΊΝΑΙ ΌΛΑ ΚΑΛΆ."] = "ΓΕΙΑ ΣΟΥ ΚΟΣΜΕ! ΕΛΠΙΖΩ ΝΑ ΕΙΝΑΙ ΟΛΑ ΚΑΛΑ.";
      testTexts["Η ΔΙΉΘΙΣΗ ΕΊΝΑΙ ΈΝΑ ΑΣΥΝΉΘΙΣΤΟ ΡΉΜΑ ΚΑΙ ΤΟ ΎΨΙΛΟΝ ΈΝΑ ΑΣΥΝΉΘΙΣΤΟ ΓΡΆΜΜΑ."] = "Η ΔΙΗΘΙΣΗ ΕΙΝΑΙ ΕΝΑ ΑΣΥΝΗΘΙΣΤΟ ΡΗΜΑ ΚΑΙ ΤΟ ΥΨΙΛΟΝ ΕΝΑ ΑΣΥΝΗΘΙΣΤΟ ΓΡΑΜΜΑ.";
      testTexts["ΤΑ ΑΪΔΌΝΙΑ ΔΕΝ ΣΕ ΑΦΉΝΟΥΝΕ ΝΑ ΚΟΙΜΗΘΕΊΣ ΣΤΙΣ ΠΛΆΤΡΕΣ"] = "ΤΑ ΑΙΔΟΝΙΑ ΔΕΝ ΣΕ ΑΦΗΝΟΥΝΕ ΝΑ ΚΟΙΜΗΘΕΙΣ ΣΤΙΣ ΠΛΑΤΡΕΣ";
      testTexts["ΈΞΩ ΑΠΌ ΤΗΝ ΠΌΛΗ ΒΡΊΣΚΟΝΤΑΙ ΤΑ ΔΈΝΤΡΑ"] = "ΕΞΩ ΑΠΟ ΤΗΝ ΠΟΛΗ ΒΡΙΣΚΟΝΤΑΙ ΤΑ ΔΕΝΤΡΑ";

      bool succeed = true;
      for(final String uppercaseTextWithAccents in testTexts.keys) {
        final String uppercaseTextWithoutAccents = removeAccentsUppercase(uppercaseTextWithAccents);
        final bool match = uppercaseTextWithoutAccents == testTexts[uppercaseTextWithAccents];
        print('$uppercaseTextWithAccents -> $uppercaseTextWithoutAccents [${testTexts[uppercaseTextWithAccents]}] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
    });

    test('Test remove accents',() {
      final Map<String,String> testTexts = {};
      testTexts["ΓΕΙΆ ΣΟΥ ΚΌΣΜΕ! ΕΛΠΊΖΩ ΝΑ ΕΊΝΑΙ ΌΛΑ ΚΑΛΆ."] = "ΓΕΙΑ ΣΟΥ ΚΟΣΜΕ! ΕΛΠΙΖΩ ΝΑ ΕΙΝΑΙ ΟΛΑ ΚΑΛΑ.";
      testTexts["Η ΔΙΉΘΙΣΗ ΕΊΝΑΙ ΈΝΑ ΑΣΥΝΉΘΙΣΤΟ ΡΉΜΑ ΚΑΙ ΤΟ ΎΨΙΛΟΝ ΈΝΑ ΑΣΥΝΉΘΙΣΤΟ ΓΡΆΜΜΑ."] = "Η ΔΙΗΘΙΣΗ ΕΙΝΑΙ ΕΝΑ ΑΣΥΝΗΘΙΣΤΟ ΡΗΜΑ ΚΑΙ ΤΟ ΥΨΙΛΟΝ ΕΝΑ ΑΣΥΝΗΘΙΣΤΟ ΓΡΑΜΜΑ.";
      testTexts["ΤΑ ΑΪΔΌΝΙΑ ΔΕΝ ΣΕ ΑΦΉΝΟΥΝΕ ΝΑ ΚΟΙΜΗΘΕΊΣ ΣΤΙΣ ΠΛΆΤΡΕΣ"] = "ΤΑ ΑΙΔΟΝΙΑ ΔΕΝ ΣΕ ΑΦΗΝΟΥΝΕ ΝΑ ΚΟΙΜΗΘΕΙΣ ΣΤΙΣ ΠΛΑΤΡΕΣ";
      testTexts["ΈΞΩ ΑΠΌ ΤΗΝ ΠΌΛΗ ΒΡΊΣΚΟΝΤΑΙ ΤΑ ΔΈΝΤΡΑ"] = "ΕΞΩ ΑΠΟ ΤΗΝ ΠΟΛΗ ΒΡΙΣΚΟΝΤΑΙ ΤΑ ΔΕΝΤΡΑ";
      testTexts["γειά σου κόσμε! ελπίζω να είναι όλα καλά."] = "γεια σου κοσμε! ελπιζω να ειναι ολα καλα.";
      testTexts["Η διήθιση είναι ένα ασυνήθιστο ρήμα και το ύψιλον ένα ασυνήθιστο γράμμα."] = "Η διηθιση ειναι ενα ασυνηθιστο ρημα και το υψιλον ενα ασυνηθιστο γραμμα.";
      testTexts["Τα αϊδόνια δεν σε αφήνουνε να κοιμηθείς στις Πλάτρες"] = "Τα αιδονια δεν σε αφηνουνε να κοιμηθεις στις Πλατρες";
      testTexts["Έξω από την πόλη βρίσκονται τα δέντρα"] = "Εξω απο την πολη βρισκονται τα δεντρα";

      bool succeed = true;
      for(final String textWithAccents in testTexts.keys) {
        final String textWithoutAccents = removeAccents(textWithAccents);
        final bool match = textWithoutAccents == testTexts[textWithAccents];
        print('$textWithAccents -> $textWithoutAccents [${testTexts[textWithAccents]}] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
    });

    test('Test contains Greek',() {
      final Map<String,bool> testTexts = {};
      testTexts["γειά σου κόσμε! ελπίζω να είναι όλα καλά."] = true;
      testTexts["ΈΞΩ ΑΠΌ ΤΗΝ ΠΌΛΗ ΒΡΊΣΚΟΝΤΑΙ ΤΑ ΔΈΝΤΡΑ"] = true;
      testTexts["Mixed sentence with some English και μερικά Ελληνικά"] = true;
      testTexts["Purely non-Greek sentence"] = false;
      testTexts["Something"] = false;
      testTexts[""] = false; // empty text

      bool succeed = true;
      for(final String text in testTexts.keys) {
        final bool hasGreek = containsGreek(text);
        final bool? expected = testTexts[text];
        final bool match = expected != null && expected == hasGreek;
        print('$text -> $hasGreek [$expected] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
    });

  });
}