/// A Dart library for manipulating Greek text - mainly transforming between
/// Latin and Greek character sets.
///
/// Based on the ISO 843 standard (which is identical to ELOT 743).
//
// It can be used to transform Greek text to the equivalent using the Latin
// alphabet (aka Greeklish). The other way also works, assuming the source text
// is consistent with the above standards.
///
library greek_tools;

export 'src/greeklish.dart';
