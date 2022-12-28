import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:umg/main.dart';
import 'package:path/path.dart';

class Carousel extends StatefulWidget {
  final String imgFolderPath;

  const Carousel({Key? key, required this.imgFolderPath}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  List<Color?>? colorsList;
  List<String>? pathsList;
  int curColorIndex = 0;

  _loadColors() async {
    // todo: would be more efficient inside glasses_list (do it once),
    //  and would enable parsing of folders
    final manifestContent = await rootBundle.loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    pathsList = manifestMap.keys
        .where((String assetPath) => assetPath.contains(widget.imgFolderPath))
        .toList();

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
          child: Image.asset(pathsList![curColorIndex], height: 120, width: 120,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                if (curColorIndex > 0) {
                  setState(() {
                    curColorIndex -= 1;
                  });
                }
              },
              child: const Icon(Icons.arrow_left_sharp)
            ),
            Row(
              children: [
                for(Color? color in colorsList!)
                  Container(
                    height: 15,
                    width: 15,
                    color: color!,
                  ),
              ],
            ),
            InkWell(
                onTap: () {
                  if (curColorIndex < pathsList!.length - 1) {
                    setState(() {
                      curColorIndex += 1;
                    });
                  }
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
