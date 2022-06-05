import 'package:greek_tools/greek_tools.dart';
import 'package:test/test.dart';

const List<String> greekWords = [
  "Άρτα",
  "Ακταίο",
  "Νεράϊδα",
  "Μαυροβούνι",
  "Ναύπλιο",
  "Ταΰγετος",
  "Βόλος",
  "Γαράζο",
  "Γουριά",
  "Άγναντα",
  "Γλυφάδα",
  "Αγχίαλος",
  "Λόγγος",
  "Λαγκάδα",
  "Δένδρα",
  "Ερέτρια",
  "Ηράκλειο",
  "Μαρινέϊκα",
  "Ρεύματα",
  "Λευκάδα",
  "Ζεμενό",
  "Ηράκλειο",
  "Θεσπιές",
  "Ίρια",
  "Καλαμάκι",
  "Λίμνη",
  "Μαραθώνας",
  "Μπέχρος",
  "Τέμπη",
  "Νεστάνη",
  "Ντία",
  "Ξάνθη",
  "Όθος",
  "Δελφοί",
  "Δοϊράνι",
  "Βούναργο",
  "Παύλος",
  "Μπέχρος",
  "Τέμπη",
  "Μερόπι",
  "Άσσος",
  "Σάμος",
  "Τίρυνθα",
  "Πέντε",
  "Βρύσες",
  "Υλίκη",
  "Φιλοθέη",
  "Χαραυγή",
  "Ψαρά",
  "Ωρωπός"
];

const List<String> expectedGreeklishWordsSimplified = [
  "Arta",
  "Aktaio",
  "Neraida",
  "Mavrovouni",
  "Nafplio",
  "Taygetos",
  "Volos",
  "Garazo",
  "Gouria",
  "Agnanta",
  "Glyfada",
  "Anchialos",
  "Longos",
  "Lagkada",
  "Dendra",
  "Eretria",
  "Irakleio",
  "Marineika",
  "Revmata",
  "Lefkada",
  "Zemeno",
  "Irakleio",
  "Thespies",
  "Iria",
  "Kalamaki",
  "Limni",
  "Marathonas",
  "Bechros",
  "Tempi",
  "Nestani",
  "Ntia",
  "Xanthi",
  "Othos",
  "Delfoi",
  "Doirani",
  "Vounargo",
  "Pavlos",
  "Bechros",
  "Tempi",
  "Meropi",
  "Assos",
  "Samos",
  "Tiryntha",
  "Pente",
  "Vryses",
  "Yliki",
  "Filothei",
  "Charavgi",
  "Psara",
  "Oropos"
];

const List<String> expectedGreeklishWordsWithAccents = [
  "Árta",
  "Aktaío",
  "Neráïda",
  "Mavrovoúni",
  "Náfplio",
  "Taÿ́getos",
  "Vólos",
  "Garázo",
  "Gouriá",
  "Ágnanta",
  "Glyfáda",
  "Anchíalos",
  "Lóngos",
  "Lagkáda",
  "Déndra",
  "Erétria",
  "Īrákleio",
  "Marinéïka",
  "Révmata",
  "Lefkáda",
  "Zemenó",
  "Īrákleio",
  "Thespiés",
  "Íria",
  "Kalamáki",
  "Límnī",
  "Marathṓnas",
  "Béchros",
  "Témpī",
  "Nestánī",
  "Ntía",
  "Xánthī",
  "Óthos",
  "Delfoí",
  "Doïráni",
  "Voúnargo",
  "Pávlos",
  "Béchros",
  "Témpī",
  "Merópi",
  "Ássos",
  "Sámos",
  "Tíryntha",
  "Pénte",
  "Vrýses",
  "Ylíkī",
  "Filothéī",
  "Charavgī́",
  "Psará",
  "Ōrōpós"
];

void main() {
  group('Greek Tools tests', () {
    setUp(() {
      // setup goes here.
    });

    test('Test words', () {
      print('Testing words without accents ...');
      bool succeed = true;
      for (int i = 0; i < greekWords.length; i++) {
        final String greekWord = greekWords[i];
        final String greeklishWord = toGreeklish(greekWord);
        final bool match = greeklishWord == expectedGreeklishWordsSimplified[i];
        print(
            '$greekWord -> $greeklishWord [${expectedGreeklishWordsSimplified[i]} ] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
      print('done!');
    });

    test('Test words with accents', () {
      print('Testing words with accents ...');
      bool succeed = true;
      for (int i = 0; i < greekWords.length; i++) {
        final String greekWord = greekWords[i];
        final String greeklishWord = toGreeklish(greekWord, withAccents: true);
        final bool match =
            greeklishWord == expectedGreeklishWordsWithAccents[i];
        print(
            '$greekWord -> $greeklishWord [ ${expectedGreeklishWordsWithAccents[i]} ] ${match ? "✓" : "✗"}');
        succeed &= match;
      }
      expect(succeed, true);
      print('done!');
    });
  });
}
