import 'dart:core';

class Greeklish {

  static final Map<String, String> mappingBase = {
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

  static final Map<String,String> mappingWithAccents = {
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

  static final Map<String,List<String>> exceptionsNotes_1_2 = {
    "ΑΥ":["AV", "AF"],
    "Αυ":["Av", "Af"],
    "αυ":["av", "af"],
    "ΑΎ":["AV", "AF"],
    "Αύ":["Av", "Af"],
    "αύ":["av", "af"],
    "ΕΥ":["EV", "EF"],
    "Ευ":["Ev", "Ef"],
    "ευ":["ev", "ef"],
    "ΕΎ":["EV", "EF"],
    "Εύ":["Ev", "Ef"],
    "εύ":["ev", "ef"],
  };

  static final Map<String,String> exceptions = {
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

  static final Map<String,List<String>> exceptionsWithAccentsNotes_1_2 = {
    "ΑΎ": ["ÁV", "ÁF"],
    "Αύ": ["Áv", "Áf"],
    "αύ": ["áv", "áf"],
    "ΕΎ": ["ÉV", "ÉF"],
    "Εύ": ["Év", "Éf"],
    "εύ": ["év", "éf"]
  };

  static final Map<String,String> exceptionsWithAccents = {
    "ΟΎ": "OÚ",
    "Ού": "Oú",
    "ού": "oú"
  };

  static final Map<String,String> exceptionsAllCaps = {
    "Θ": "TH",
    "Χ": "CH",
    "Ψ": "PS"
  };

  static final String ALL_GREEK_UPPERCASE_LETTERS = "ΑΆΒΓΔΕΈΖΗΉΘΙΊΪΚΛΜΝΞΟΌΠΡΣΤΥΎΫΦΧΨΩΏ";
  static final String ALL_GREEK_LOWERCASE_LETTERS = "αάβγδεέζηήθιίϊΐκλμνξοόπρσςτυύϋΰφχψωώ";
  static final String ALL_GREEK_LETTERS = ALL_GREEK_UPPERCASE_LETTERS + ALL_GREEK_LOWERCASE_LETTERS;
  static final String ALL_GREEK_VOWELS = "ΑαΆάΕεΈέΗηΉήΙιΊίΪϊΐΟοΌόΥυΎύΫϋΰΩωΏώ";
  static final String NOTE_1_GREEK_CONSONANTS = "ΒβΓγΔδΖζΛλΜμΝνΡρ";
  static final String NOTE_2_GREEK_CONSONANTS = "ΘθΚκΞξΠπΣσΤτΦφΧχΨψ";

  static bool checkNote1(final String character) {
    return ALL_GREEK_VOWELS.indexOf(character) != -1 || NOTE_1_GREEK_CONSONANTS.indexOf(character) != -1;
  }

  /**
   * Converts a text given in Greek into Greeklish (i.e. the equivalent text expressed in the Latin character set).
   * If withAccents is set to true, it converts accents as well, i.e. "Κόσμος" is converted to "Kósmos".
   *
   * @see #toGreeklish(String)
   *
   * @param greek the original text, expressed in the Greek character set
   * @param withAccents indicates whether the resulting text will have accents (by default it ignores accents, i.e. "Κόσμος" is converted to "Kosmos")
   * @return the converted text, expressed in the Latin character set
   */
  static String toGreeklish(final String greek, {final bool withAccents = false}) {
    List<String> words = greek.split(' ');
    String greeklish = '';
    for(final String word in words) {
      greeklish += toGreeklishWord(word, withAccents: withAccents) + ' ';
    }
    return greeklish.trim();
  }

  /**
   * Converts a word given in Greek into Greeklish (i.e. the equivalent word expressed in the Latin character set).
   * If withAccents is set to true, it converts accents as well, i.e. "Κόσμος" is converted to "Kósmos".
   *
   * @see #toGreeklish(String)
   *
   * @param greekWord the original word, expressed in the Greek character set
   * @param withAccents indicates whether the resulting text will have accents
   * @return the converted text, expressed in the Latin character set
   */
  static String toGreeklishWord(final String greekWord, {final bool withAccents = false}) {
    String greeklishWord = greekWord;
    // handle words starting with ΜΠ, Μπ, μπ
        {
      if(greeklishWord.startsWith("ΜΠ")) greeklishWord = greeklishWord.replaceFirst(RegExp('ΜΠ'), "B");
      else if(greeklishWord.startsWith("Μπ")) greeklishWord = greeklishWord.replaceFirst(RegExp('Μπ'), "B");
      else if(greeklishWord.startsWith("μπ")) greeklishWord = greeklishWord.replaceFirst(RegExp('μπ'), "b");
    }
    // first handle exceptional cases under notes 1, 2 - with accents ...
    if(withAccents) {
      for(final String exceptionKey in exceptionsWithAccentsNotes_1_2.keys) {
        final List<String>? exceptionValues = exceptionsWithAccentsNotes_1_2[exceptionKey];
        if(exceptionValues == null) throw new Error();
        int index;
        while((index = greeklishWord.indexOf(exceptionKey)) != -1) {
          final bool endOfWord = index == greeklishWord.length - exceptionKey.length - 1;
          final bool note1 = !endOfWord && checkNote1(greeklishWord[index + exceptionKey.length]);
          greeklishWord = greeklishWord.replaceAll(exceptionKey, note1 ? exceptionValues[0] : exceptionValues[1]);
        }
      }
    }
    // ... and then handle base cases
        {
      for(final String exceptionKey in exceptionsNotes_1_2.keys) {
        final List<String>? exceptionValues = exceptionsNotes_1_2[exceptionKey];
        if(exceptionValues == null) throw new Error();
        int index;
        while((index = greeklishWord.indexOf(exceptionKey)) != -1) {
          final bool endOfWord = index == greeklishWord.length - exceptionKey.length - 1;
          final bool note1 = !endOfWord && checkNote1(greeklishWord[index + exceptionKey.length]);
          greeklishWord = greeklishWord.replaceAll(exceptionKey, note1 ? exceptionValues[0] : exceptionValues[1]);
        }
      }
    }
    // next handle exceptional cases - with accents ...
    if(withAccents) {
      for(final String exceptionKey in exceptionsWithAccents.keys) {
        final String? exceptionValue = exceptionsWithAccents[exceptionKey];
        if(exceptionValue == null) throw new Error();
        greeklishWord = greeklishWord.replaceAll(exceptionKey, exceptionValue);
      }
    }
    // ... and then handle base cases
        {
      for(final String exceptionKey in exceptions.keys) {
        final String? exceptionValue = exceptions[exceptionKey];
        if(exceptionValue == null) throw new Error();
        greeklishWord = greeklishWord.replaceAll(exceptionKey, exceptionValue);
      }
    }
    // next handle special letters if all caps
    final bool isAllCaps = isGreekWordInAllCaps(greekWord);
    if(isAllCaps) {
      for(final String exceptionKey in exceptionsAllCaps.keys) {
        final String? exceptionValue = exceptionsAllCaps[exceptionKey];
        if(exceptionValue == null) throw new Error();
        greeklishWord = greeklishWord.replaceAll(exceptionKey, exceptionValue);
      }
    }
    // finally handle all other letters - with accents ...
    if(withAccents) {
      for(final String mappingKey in mappingWithAccents.keys) {
        final String? mappingValue = mappingWithAccents[mappingKey];
        if(mappingValue == null) throw new Error();
        greeklishWord = greeklishWord.replaceAll(mappingKey, mappingValue);
      }
    }
    // ... and then all base cases
        {
      for(final String mappingKey in mappingBase.keys) {
        final String? mappingValue = mappingBase[mappingKey];
        if(mappingValue == null) throw new Error();
        greeklishWord = greeklishWord.replaceAll(mappingKey, mappingValue);
      }
    }

    return greeklishWord;
  }

  /**
   * Checks if a given Greek word is in all-capital letters.
   *
   * @param greekWord must be a Greek word
   * @return true if and only if a given Greek word is in all-capital letters
   */
  static bool isGreekWordInAllCaps(final String greekWord) {
    for(final String c in greekWord.split('')) {
      if(ALL_GREEK_LOWERCASE_LETTERS.indexOf(c) != -1) return false;
    }
    return true;
  }

  static final Map<String,String> ACCENTS_TO_PLAIN_GREEK_LOWERCASE = {
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

  static final Map<String,String> ACCENTS_TO_PLAIN_GREEK_UPPERCASE = {
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

  static final Map<String,String> ACCENTS_TO_PLAIN_GREEK = {
    ...ACCENTS_TO_PLAIN_GREEK_LOWERCASE,
    ...ACCENTS_TO_PLAIN_GREEK_UPPERCASE
  };

  /**
   * Converts a given lower-case text in Greek, into the equivalent, simplified version where accents are removed.
   * For example, "κόσμος" is converted to "κοσμος".
   *
   * This can be useful when you are searching in text.
   *
   * @param greekLowercaseTextWithAccents the lower-case text in Greek, which includes accents
   * @return the equivalent text in Greek, without accents
   */
  static String removeAccentsLowercase(final String greekLowercaseTextWithAccents) {
    String greekLowercaseTextWithoutAccents = '';
    for(final String c in greekLowercaseTextWithAccents.split('')) {
      final String? cWithoutAccent = ACCENTS_TO_PLAIN_GREEK_LOWERCASE[c];
      greekLowercaseTextWithoutAccents += cWithoutAccent == null ? c : cWithoutAccent;
    }
    return greekLowercaseTextWithoutAccents;
  }

  /**
   * Converts a given upper-case text in Greek, into the equivalent, simplified version where accents are removed.
   * For example, "ΈΝΑΣ ΚΌΣΜΟΣ" is converted to "ΕΝΑΣ ΚΟΣΜΟΣ".
   *
   * This can be useful when you are searching in text.
   *
   * @param greekUppercaseTextWithAccents the upper-case text in Greek, which includes accents
   * @return the equivalent text in Greek, without accents
   */
  static String removeAccentsUppercase(final String greekUppercaseTextWithAccents) {
    String greekUppercaseTextWithoutAccents = '';
    for(final String c in greekUppercaseTextWithAccents.split('')) {
      final String? cWithoutAccent = ACCENTS_TO_PLAIN_GREEK_UPPERCASE[c];
      greekUppercaseTextWithoutAccents += cWithoutAccent == null ? c : cWithoutAccent;
    }
    return greekUppercaseTextWithoutAccents.toString();
  }

  /**
   * Converts a given any-case text in Greek, into the equivalent, simplified version where accents are removed.
   * For example, "Ένας Κόσμος" is converted to "Ενας Κοσμος".
   *
   * This can be useful when you are searching in text.
   *
   * @param greekTextWithAccents the any-case text in Greek, which includes accents
   * @return the equivalent text in Greek, without accents
   */
  static String removeAccents(final String greekTextWithAccents) {
    String greekTextWithoutAccents = '';
    for(final String c in greekTextWithAccents.split('')) {
      final String? cWithoutAccent = ACCENTS_TO_PLAIN_GREEK[c];
      greekTextWithoutAccents += cWithoutAccent == null ? c : cWithoutAccent;
    }
    return greekTextWithoutAccents.toString();
  }

  /**
   * Simply checks if the given text contains at least one character from the Greek character set.
   *
   * @param text the text to be checked
   * @return true if and only if the given text contains at least one character from the Greek character set
   */
  static bool containsGreek(final String text) {
    for(final String c in text.split('')) {
      if(ALL_GREEK_LETTERS.indexOf(c) > -1) return true;
    }
    return false;
  }
}