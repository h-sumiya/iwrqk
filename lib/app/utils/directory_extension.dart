import 'dart:io';
import 'package:path/path.dart' as p;

extension DirectoryExtension on Directory {
  /// Returns a [File] object pointing to [name] under this directory.
  File file(String name) => File(p.join(path, name));

  /// Returns a [Directory] object for a child directory named [name].
  Directory dir(String name) => Directory(p.join(path, name));
}
