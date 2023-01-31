import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:path/path.dart' as p;
import 'package:umg/screen/glasses/glasses.dart';



class AssetsMetaData {

  _def(final String glassFolderPath) async {

    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    // get only the paths and not optionals info
    // transform this iterable object in a Set()
    final Set<String> paths = manifestMap.keys.toSet();

    // get glass folder path
    final glass = paths.where((String pathName) => p.dirname(pathName).contains("verre"));

    // we transform own list of dirname path with a map and get the files associated
    final colors = glass.map((String path) => p.basenameWithoutExtension(path));

  }
}