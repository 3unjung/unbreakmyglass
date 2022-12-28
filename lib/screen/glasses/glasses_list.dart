import 'package:flutter/material.dart';
import 'package:umg/main.dart';
import 'package:umg/screen/glasses/carousel.dart';

class GlassesList extends StatefulWidget {
  const GlassesList({Key? key}) : super(key: key);

  @override
  State<GlassesList> createState() => _GlassesListState();
}

class _GlassesListState extends State<GlassesList> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.90,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
    /*for (int i=0;i<6;i++)
      Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
        decoration: const BoxDecoration(
          color: blanc,
        ),
        child: const Carousel(imgFolderPath: "assets/img/verre_piscine/")
      ),*/
        Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
        decoration: const BoxDecoration(
        color: blanc,
        ),
        child: const Carousel(imgFolderPath: "assets/img/verre_piscine/")
        ),

        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
            decoration: const BoxDecoration(
              color: blanc,
            ),
            child: const Carousel(imgFolderPath: "assets/img/verre_a_flute/")
        ),

        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
            decoration: const BoxDecoration(
              color: blanc,
            ),
            child: const Carousel(imgFolderPath: "assets/img/verre_a_tube/")
        ),

        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
            decoration: const BoxDecoration(
              color: blanc,
            ),
            child: const Carousel(imgFolderPath: "assets/img/verre_a_vin/")
        ),
      ],
    );
  }
}
