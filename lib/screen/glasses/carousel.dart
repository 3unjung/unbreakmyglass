import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umg/main.dart';
import 'package:path/path.dart';

class Carousel extends StatefulWidget {
  // declare a variable that will use the image path
  final String imgFolderPath;

  const Carousel({Key? key, required this.imgFolderPath}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  // list colors
  List<Color?>? colorsList;

  // image list paths
  List<String>? pathsList;

  List<String>? defaultSituationPathsList;
  String? defaultSituationPath;

  // current color
  int curColorIndex = 0;

  // is default situation image display
  bool defaultSituationShown = true;

  _loadColors() async {
    // todo: would be more efficient inside glasses_list (do it once),
    //  and would enable parsing of folders

    // ask flutter the path of each assets by String
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    // asks flutter for unimportant additional information by dynamic
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);

    // fetch all image paths list
    pathsList = manifestMap.keys
        .where((String assetPath) => assetPath.contains(widget.imgFolderPath))
        .toList();

    // fetch image 'default situation'
    defaultSituationPath = pathsList
        ?.firstWhere((String assetPath) => assetPath.contains(defaultSituationFileName));

    pathsList = pathsList
        ?.where((String assetPath) => !assetPath.contains(defaultSituationFileName))
        .toList();

    // fetch all colors list from the main file
    colorsList = pathsList
        ?.map((String path) => nameToColorMap[basenameWithoutExtension(path)])
        .toList();

    curColorIndex = (pathsList!.length / 2).floor();

    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    if (pathsList == null ||
        colorsList == null) {
      return const Text("loading");
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: defaultSituationShown
              ? Image.asset(defaultSituationPath!)
              : Image.asset(pathsList![curColorIndex], height: 120, width: 120,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            InkWell(
              onTap: () {
                setState(() {
                  if (curColorIndex > 0) {
                    curColorIndex -= 1;
                  }
                  defaultSituationShown = false;
                });
              },
              child: const Icon(Icons.arrow_left_sharp)
            ),
            InkWell(
              onTap: () {
                setState(() {
                  defaultSituationShown = true;
                });
              },
              child: Row(
                children: [
                  for(Color? color in colorsList!)
                    Container(
                      height: 15,
                      width: 15,
                      color: color!,
                    ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (curColorIndex < pathsList!.length - 1) {
                    curColorIndex += 1;
                  }
                  defaultSituationShown = false;
                });
              },
                child: const Icon(Icons.arrow_right_sharp)
            ),
          ],
        ),
      ],
    );
  }

  _CarouselState() {
    _loadColors();
  }
}
