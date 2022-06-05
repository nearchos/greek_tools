import 'dart:core';

const Map<String, String> mappingBase = {
  "Α": "A",
  "Ά": "A",
  "α": "a",
  "ά": "a",
  "Β": "V",
  "β": "v",
  "Γ": "G",
  "γ": "g",
  "Δ": "D",
  "δ": "d",
  "Ε": "E",
  "Έ": "E",
  "ε": "e",
  "έ": "e",
  "Ζ": "Z",
  "ζ": "z",
  "Η": "I",
  "Ή": "I",
  "η": "i",
  "ή": "i",
  "Θ": "Th",
  "θ": "th",
  "Ι": "I",
  "Ί": "I",
  "Ϊ": "I",
  "ι": "i",
  "ί": "i",
  "ϊ": "i",
  "ΐ": "i",
  "Κ": "K",
  "κ": "k",
  "Λ": "L",
  "λ": "l",
  "Μ": "M",
  "μ": "m",
  "Ν": "N",
  "ν": "n",
  "Ξ": "X",
  "ξ": "x",
  "Ο": "O",
  "Ό": "O",
  "ο": "o",
  "ό": "o",
  "Π": "P",
  "π": "p",
  "Ρ": "R",
  "ρ": "r",
  "Σ": "S",
  "σ": "s",
  "ς": "s",
  "Τ": "T",
  "τ": "t",
  "Υ": "Y",
  "Ύ": "Y",
  "Ϋ": "Y",
  "υ": "y",
  "ύ": "y",
  "ϋ": "y",
  "ΰ": "y",
  "Φ": "F",
  "φ": "f",
  "Χ": "Ch",
  "χ": "ch",
  "Ψ": "Ps",
  "ψ": "ps",
  "Ω": "O",
  "Ώ": "O",
  "ω": "o",
  "ώ": "o",
  ";": "?"
};

const Map<String, String> mappingWithAccents = {
  "Ά": "Á",
  "ά": "á",
  "Έ": "É",
  "έ": "é",
  "Η": "Ī",
  "Ή": "Ī́",
  "η": "ī",
  "ή": "ī́",
  "Ί": "Í",
  "Ϊ": "Ï",
  "ί": "í",
  "ϊ": "ï",
  "ΐ": "ḯ",
  "Ό": "Ó",
  "ό": "ó",
  "Ύ": "Ý",
  "Ϋ": "Ÿ",
  "ύ": "ý",
  "ϋ": "ÿ",
  "ΰ": "ÿ́",
  "Ω": "Ō",
  "Ώ": "Ṓ",
  "ω": "ō",
  "ώ": "ṓ"
};

const Map<String, List<String>> exceptionsNotes_1_2 = {
  "ΑΥ": ["AV", "AF"],
  "Αυ": ["Av", "Af"],
  "αυ": ["av", "af"],
  "ΑΎ": ["AV", "AF"],
  "Αύ": ["Av", "Af"],
  "αύ": ["av", "af"],
  "ΕΥ": ["EV", "EF"],
  "Ευ": ["Ev", "Ef"],
  "ευ": ["ev", "ef"],
  "ΕΎ": ["EV", "EF"],
  "Εύ": ["Ev", "Ef"],
  "εύ": ["ev", "ef"],
  "ΗΥ": ["IV", "IF"],
  "Ηυ": ["Iv", "If"],
  "ηυ": ["iv", "if"],
  "ΗΎ": ["IV", "IF"],
  "Ηύ": ["Iv", "If"],
  "ηύ": ["iv", "if"],
};

const Map<String, String> exceptions = {
  "ΟΥ": "OU",
  "Ου": "Ou",
  "ου": "ou",
  "ΟΎ": "OU",
  "Ού": "Ou",
  "ού": "ou",
  "ΓΓ": "NG",
  "Γγ": "Ng",
  "γγ": "ng",
  "ΓΚ": "GK",
  "Γκ": "Gk",
  "γκ": "gk",
  "ΓΞ": "NX",
  "Γξ": "Nx",
  "γξ": "nx",
  "ΓΧ": "NCH",
  "Γχ": "Nch",
  "γχ": "nch",
  "ΝΤ": "NT",
  "Ντ": "Nt",
  "ντ": "nt",
};

const Map<String, List<String>> exceptionsWithAccentsNotes_1_2 = {
  "ΑΎ": ["ÁV", "ÁF"],
  "Αύ": ["Áv", "Áf"],
  "αύ": ["áv", "áf"],
  "ΕΎ": ["ÉV", "ÉF"],
  "Εύ": ["Év", "Éf"],
  "εύ": ["év", "éf"],
  "ΗΎ": ["Ī́V", "Ī́F"],
  "Ηύ": ["Ī́v", "Ī́f"],
  "ηύ": ["ī́v", "ī́f"]
};

const Map<String, String> exceptionsWithAccents = {
  "ΟΎ": "OÚ",
  "Ού": "Oú",
  "ού": "oú"
};

const Map<String, String> exceptionsAllCaps = {"Θ": "TH", "Χ": "CH", "Ψ": "PS"};

const String _allGreekUppercaseLetters = "ΑΆΒΓΔΕΈΖΗΉΘΙΊΪΚΛΜΝΞΟΌΠΡΣΤΥΎΫΦΧΨΩΏ";
const String _allGreekLowercaseLetters = "αάβγδεέζηήθιίϊΐκλμνξοόπρσςτυύϋΰφχψωώ";
const String _allGreekLetters =
    _allGreekUppercaseLetters + _allGreekLowercaseLetters;

/// υ is converted as v before β, γ, δ, ζ, λ, μ, ν, ρ and all vowels - e.g., Εύβοια -> Evvoia, Νύξη -> Nyxi
const String _allGreekVowels = "ΑαΆάΕεΈέΗηΉήΙιΊίΪϊΐΟοΌόΥυΎύΫϋΰΩωΏώ";
const String _note1GreekConsonants = "ΒβΓγΔδΖζΛλΜμΝνΡρ";

/// υ is converted as f before θ, κ, ξ, π, σ, τ, φ, χ, ψ and at the end of a word - e.g.,
const String _note2GreekConsonants = "ΘθΚκΞξΠπΣσςΤτΦφΧχΨψ";

bool _checkNote1(final String character) {
  return _allGreekVowels.contains(character) ||
      _note1GreekConsonants.contains(character);
}

bool _checkNote2(final String character) {
  return _note2GreekConsonants.contains(character);
}

bool verifyCoverage() {
  final List<String> allConsonants = _allGreekLetters.split('');
  for (String character in allConsonants) {
    if (!(_checkNote1(character) ^ _checkNote2(character))) {
      print(
          '$character -> ${_checkNote1(character)} ^ ${_checkNote2(character)}');
      return false;
    }
  }
  return true;
}

/// Converts the input [greek] text, of multiple words, into Greeklish (i.e. the equivalent text expressed in the Latin character set).
///
/// If [withAccents] is set to true, it converts accents as well, i.e. "Κόσμος" is converted to "Kósmos".
///
String toGreeklish(final String greek, {final bool withAccents = false}) {
  List<String> words = greek.split(' ');
  String greeklish = '';
  for (final String word in words) {
    greeklish += '${toGreeklishWord(word, withAccents: withAccents)} ';
  }
  return greeklish.trim();
}

/// Converts a single [greek] word into Greeklish (i.e. the equivalent word expressed in the Latin character set).
///
/// If [withAccents] is set to true, it converts accents as well, i.e. "Κόσμος" is converted to "Kósmos".
///
String toGreeklishWord(final String greekWord,
    {final bool withAccents = false}) {
  String greeklishWord = greekWord;
// handle words starting with ΜΠ, Μπ, μπ
  {
    if (greeklishWord.startsWith("ΜΠ")) {
      greeklishWord = greeklishWord.replaceFirst(RegExp('ΜΠ'), "B");
    } else if (greeklishWord.startsWith("Μπ")) {
      greeklishWord = greeklishWord.replaceFirst(RegExp('Μπ'), "B");
    } else if (greeklishWord.startsWith("μπ")) {
      greeklishWord = greeklishWord.replaceFirst(RegExp('μπ'), "b");
    }
  }
// first handle exceptional cases under notes 1, 2 - with accents ...
  if (withAccents) {
    for (final String exceptionKey in exceptionsWithAccentsNotes_1_2.keys) {
      final List<String>? exceptionValues =
          exceptionsWithAccentsNotes_1_2[exceptionKey];
      if (exceptionValues == null) throw Error();
      int index;
      while ((index = greeklishWord.indexOf(exceptionKey)) != -1) {
        final bool endOfWord =
            index == greeklishWord.length - exceptionKey.length - 1;
        final bool note1 = !endOfWord &&
            _checkNote1(greeklishWord[index + exceptionKey.length]);
        // no need to check note 2 because they are complementary
        greeklishWord = greeklishWord.replaceAll(
            exceptionKey, note1 ? exceptionValues[0] : exceptionValues[1]);
      }
    }
  }
// ... and then handle base cases
  {
    for (final String exceptionKey in exceptionsNotes_1_2.keys) {
      final List<String>? exceptionValues = exceptionsNotes_1_2[exceptionKey];
      if (exceptionValues == null) throw Error();
      int index;
      while ((index = greeklishWord.indexOf(exceptionKey)) != -1) {
        final bool endOfWord =
            index == greeklishWord.length - exceptionKey.length - 1;
        final bool note1 = !endOfWord &&
            _checkNote1(greeklishWord[index + exceptionKey.length]);
        greeklishWord = greeklishWord.replaceAll(
            exceptionKey, note1 ? exceptionValues[0] : exceptionValues[1]);
      }
    }
  }
// next handle exceptional cases - with accents ...
  if (withAccents) {
    for (final String exceptionKey in exceptionsWithAccents.keys) {
      final String? exceptionValue = exceptionsWithAccents[exceptionKey];
      if (exceptionValue == null) throw Error();
      greeklishWord = greeklishWord.replaceAll(exceptionKey, exceptionValue);
    }
  }
// ... and then handle base cases
  {
    for (final String exceptionKey in exceptions.keys) {
      final String? exceptionValue = exceptions[exceptionKey];
      if (exceptionValue == null) throw Error();
      greeklishWord = greeklishWord.replaceAll(exceptionKey, exceptionValue);
    }
  }
// next handle special letters if all caps
  final bool isAllCaps = isGreekWordInAllCaps(greekWord);
  if (isAllCaps) {
    for (final String exceptionKey in exceptionsAllCaps.keys) {
      final String? exceptionValue = exceptionsAllCaps[exceptionKey];
      if (exceptionValue == null) throw Error();
      greeklishWord = greeklishWord.replaceAll(exceptionKey, exceptionValue);
    }
  }
// finally handle all other letters - with accents ...
  if (withAccents) {
    for (final String mappingKey in mappingWithAccents.keys) {
      final String? mappingValue = mappingWithAccents[mappingKey];
      if (mappingValue == null) throw Error();
      greeklishWord = greeklishWord.replaceAll(mappingKey, mappingValue);
    }
  }
// ... and then all base cases
  {
    for (final String mappingKey in mappingBase.keys) {
      final String? mappingValue = mappingBase[mappingKey];
      if (mappingValue == null) throw Error();
      greeklishWord = greeklishWord.replaceAll(mappingKey, mappingValue);
    }
  }

  return greeklishWord;
}

///
/// Checks if a given [greekWord] is in all-capital letters.
///
/// Returns true if and only if the given [greekWord] consists pf capital letters only.
///
bool isGreekWordInAllCaps(final String greekWord) {
  for (final String c in greekWord.split('')) {
    if (_allGreekLowercaseLetters.contains(c)) return false;
  }
  return true;
}

const Map<String, String> _accentsToPlainGreekLowercase = {
  'ά': 'α',
  'έ': 'ε',
  'ή': 'η',
  'ί': 'ι',
  'ϊ': 'ι',
  'ΐ': 'ι',
  'ό': 'ο',
  'ύ': 'υ',
  'ϋ': 'υ',
  'ΰ': 'υ',
  'ώ': 'ω'
};

const Map<String, String> _accentsToPlainGreekUppercase = {
  'Ά': 'Α',
  'Έ': 'Ε',
  'Ή': 'Η',
  'Ί': 'Ι',
  'Ϊ': 'Ι',
  'Ό': 'Ο',
  'Ύ': 'Υ',
  'Ϋ': 'Υ',
  'Ώ': 'Ω'
};

const Map<String, String> _accentsToPlainGreek = {
  ..._accentsToPlainGreekLowercase,
  ..._accentsToPlainGreekUppercase
};

const Map<String, String> _accentsToPlainGreeklishLowercase = {
  'á': 'a',
  'é': 'e',
  'í': 'i',
  'ī́': 'i',
  'ḯ': 'i',
  'í': 'i',
  'ī': 'i',
  'ó': 'o',
  'ō': 'o',
  'ý': 'y',
};

const Map<String, String> _accentsToPlainGreeklishUppercase = {
  'Á': 'A',
  'É': 'E',
  'Í': 'I',
  'Ī́': 'I',
  'Ï': 'I',
  'Í': 'I',
  'Ī': 'I',
  'Ó': 'O',
  'Ō': 'O',
  'Ý': 'Y',
};

const Map<String, String> _accentsToPlainGreeklish = {
  ..._accentsToPlainGreeklishLowercase,
  ..._accentsToPlainGreeklishUppercase,
  ...{
    '́': ''
  }, // lone 'accent' used to detect I with accent which consists of 2 characters
};

/// Converts a given lower-case text in Greek [greekLowercaseTextWithAccents],
/// into the equivalent, simplified version where accents are removed.
///
/// For example, "κόσμος" is converted to "κοσμος".
///
/// This can be useful when you are searching in text.
///
String removeAccentsLowercase(final String greekLowercaseTextWithAccents) {
  String greekLowercaseTextWithoutAccents = '';
  for (final String c in greekLowercaseTextWithAccents.split('')) {
    final String? cWithoutAccent = _accentsToPlainGreekLowercase[c];
    greekLowercaseTextWithoutAccents += cWithoutAccent ?? c;
  }
  return greekLowercaseTextWithoutAccents;
}

/// Converts a given upper-case text in Greek [greekUppercaseTextWithAccents],
/// into the equivalent, simplified version where accents are removed.
///
/// For example, "ΈΝΑΣ ΚΌΣΜΟΣ" is converted to "ΕΝΑΣ ΚΟΣΜΟΣ".
///
/// This can be useful when you are searching in text.
///
String removeAccentsUppercase(final String greekUppercaseTextWithAccents) {
  String greekUppercaseTextWithoutAccents = '';
  for (final String c in greekUppercaseTextWithAccents.split('')) {
    final String? cWithoutAccent = _accentsToPlainGreekUppercase[c];
    greekUppercaseTextWithoutAccents += cWithoutAccent ?? c;
  }
  return greekUppercaseTextWithoutAccents.toString();
}

/// Converts a given any-case text in Greek [greekTextWithAccents],
/// into the equivalent, simplified version where accents are removed.
///
/// For example, "Ένας Κόσμος" is converted to "Ενας Κοσμος".
///
/// This can be useful when you are searching in text.
///
String removeAccents(final String greekTextWithAccents) {
  String greekTextWithoutAccents = '';
  for (final String c in greekTextWithAccents.split('')) {
    final String? cWithoutAccent = _accentsToPlainGreek[c];
    greekTextWithoutAccents += cWithoutAccent ?? c;
  }
  return greekTextWithoutAccents.toString();
}

/// Converts a given any-case text in Greeklish [greeklishTextWithAccents],
/// into the equivalent, simplified version where accents are removed.
///
/// For example, "Énas Kósmos" is converted to "Enas Kosmos".
///
/// This can be useful when you are searching in text.
///
String removeAccentsFromGreeklish(final String greeklishTextWithAccents) {
  String greeklishTextWithoutAccents = '';
  for (final String c in greeklishTextWithAccents.split('')) {
    final String? cWithoutAccent = _accentsToPlainGreeklish[c];
    greeklishTextWithoutAccents += cWithoutAccent ?? c;
  }
  return greeklishTextWithoutAccents.toString();
}

/// Checks if the given [text] contains at least one character from the Greek character set.
///
/// Returns true if and only if the given text contains at least one character from the Greek character set.
///
bool containsGreek(final String text) {
  for (final String c in text.split('')) {
    if (_allGreekLetters.contains(c)) return true;
  }
  return false;
}
