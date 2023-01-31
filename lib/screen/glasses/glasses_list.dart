import 'package:flutter/material.dart';
import 'package:umg/main.dart';
//import 'package:umg/screen/glasses/carousel.dart';
import 'package:umg/screen/glasses/carousel.dart';
import 'package:umg/partials/navbarBottom.dart';
import 'package:umg/screen/glasses/FindAssetsMetaData.dart';
import 'package:umg/screen/glasses/details.dart';





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
        Container(
          // padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          // margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                color: umgBleu,
                // height: 15,
                // width: 1000,
                child: const Center(child: Text("Verre Piscine 50cl", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 15),)),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),

                child: GestureDetector(
                  onTap: () {
                    debugPrint("I am tapped ! Please stop Itz");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsGlasse()));
                  },
                  child: Carousel(
                      imgFolderPath: "assets/img/verre_piscine/"
                  ),
                ),
              ),
            ],
          ),
        ),

        Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
        decoration: const BoxDecoration(
        color: Colors.white,
        ),
        child: Column(
          children: const [
            Carousel(
                imgFolderPath: "assets/img/verre_a_flute/"
            ),
            Text("Verre Piscine 50cl"),

          ],
        ),
        ),

        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Carousel(imgFolderPath: "assets/img/verre_a_flute/")
        ),

        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Carousel(imgFolderPath: "assets/img/verre_a_tube/")
        ),

        Container(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            margin: const EdgeInsets.symmetric(vertical: 3,horizontal: 4),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Carousel(imgFolderPath: "assets/img/verre_a_vin/")
        ),
      ],
    );
  }
}
