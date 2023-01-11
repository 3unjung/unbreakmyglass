import 'dart:convert';
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
  // list of widgets that will go inside the carousel (currently simple
  // containers)
  List<Widget>? carouselWidgetsList;

  // image list paths
  List<String>? pathsList;

  // current color
  int curColorIndex = 0;

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

    int defaultSituationIndex = pathsList!.indexWhere(
            (String assetPath) => assetPath.contains(defaultSituationFileName));
    String pathsSwapTemp = pathsList![defaultSituationIndex];
    pathsList![defaultSituationIndex] = pathsList![0];
    pathsList![0] = pathsSwapTemp;

    carouselWidgetsList = [
      Container(
        height: 15,
        width: 15,
        color: nameToColorMap["blanc"],
        child: const Text("S"),
      )
    ] + pathsList!
        .sublist(1)
        .map((String path) => Container(
        height: 15,
        width: 15,
        color: nameToColorMap[basenameWithoutExtension(path)]
    )).toList();

    setState(() { });
  }

  @override
  Widget build(BuildContext context) {
    if (pathsList == null ||
        carouselWidgetsList == null) {
      return const Text("loading");
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Image.asset(pathsList![curColorIndex], height: 120, width: 120,),
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
                  });
                },
                child: const Icon(Icons.arrow_left_sharp)
            ),
            Row(
              children: carouselWidgetsList!,
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    if (curColorIndex < pathsList!.length - 1) {
                      curColorIndex += 1;
                    }
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
