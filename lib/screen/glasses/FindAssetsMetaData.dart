import 'package:flutter/services.dart';
import 'package:umg/main.dart';
import 'dart:convert';


class MetaData {

  final imgFolderPath;

  MetaData(this.imgFolderPath);

  // assets colors list
  List<Color?>? colorsList;

// image list paths
  List<String>? pathsList;

  _details(final String imgFolderPath) async {

    // ask flutter the path of each assets by String
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    // asks flutter for unimportant additional information by dynamic
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    // fetch images paths list
    pathsList = manifestMap.keys
        .where((String assetPath) => assetPath.contains(imgFolderPath))
        .toList();

    // default situation image
    int defaultSituationImage = pathsList!.indexWhere((String assetPath) => assetPath.contains(defaultSituationFileName));
  }

}




