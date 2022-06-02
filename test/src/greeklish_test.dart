import 'package:test/test.dart';

import '../../lib/src/greek_tools.dart';

const List<String> GREEK_WORDS = [
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

const List<String> EXPECTED_GREEKLISH_WORDS_SIMPLIFIED = [
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

const List<String> EXPECTED_GREEKLISH_WORDS_WITH_ACCENTS = [
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

  test('Test words',() {
    bool succeed = true;
    for(int i = 0; i < GREEK_WORDS.length; i++) {
      final String greekWord = GREEK_WORDS[i];
      final String greeklishWord = Greeklish.toGreeklish(greekWord);
      final bool match = greeklishWord == EXPECTED_GREEKLISH_WORDS_SIMPLIFIED[i];
      print(greekWord + " -> " + greeklishWord + " [" + EXPECTED_GREEKLISH_WORDS_SIMPLIFIED[i] + "] " + (match ? "✓" : "✗"));
      succeed &= match;
    }
    expect(succeed, true);
  });

}