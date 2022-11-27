# Greek Tools for Dart

A Dart library for manipulating Greek text - mainly transforming between Latin and Greek character sets.

## Features

Based on the ISO 843 standard (which is identical to ELOT 743).

It can be used to transform Greek text to the equivalent using the Latin alphabet (aka Greeklish). The other way also works, assuming the source text is consistent with the above standards.

## Usage

Simply use ``toGreeklish`` tp convert Greek text to Greeklish. Everything else is ignored.

```dart
import 'package:greek_tools/greek_tools.dart';

toGreeklish('Κόσμος'); // produces 'Kosmos'
```

See more examples at the [`/example`](example) folder. 

## Additional information

Developed in June 2022 by [Nearchos Paspallis](https://nearchos.github.io).

This project is based on, and related to the Java version of
[Greek Tools](https://github.com/nearchos/GreekTools/tree/master/src/test/java/com/aspectsense/greektools).

This Dart library is available on pub.dev at [https://pub.dev/packages/greek_tools](https://pub.dev/packages/greek_tools)

To publish a new version, follow these steps:
1. check with a dry run: `dart pub publish --dry-run`
2. if everything is ok, proceed with publishing: `dart pub publish`

For details see [https://dart.dev/tools/pub/publishing](https://dart.dev/tools/pub/publishing).