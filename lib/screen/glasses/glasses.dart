import 'package:flutter/material.dart';
import 'package:umg/main.dart';
import 'package:umg/screen/glasses/list.dart';
import 'package:umg/screen/glasses/AssetsMetaData.dart';

// glasses list variable
final List glass = GlassesList;

// final List color = MetaData(colos);



class Glasses extends StatefulWidget {
  const Glasses({Key? key}) : super(key: key);

  @override
  State<Glasses> createState() => _GlassesState();
}

class _GlassesState extends State<Glasses> {



  @override
  Widget build(BuildContext context) {
    // glass variable
    String gName;


    return GridView.count(
        // add scroll effect
        physics: const ScrollPhysics(),

        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.5),
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          // loop for each glass
          for (int g = 0; g < glass.length; g++)


            Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 4),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // glass badge
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: umgBleu,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          gName=glass[g]['glasse'][0]['qty'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  // glass item
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(gName=glass[g]['glasse'][0]['path']),
                    ),
                  ),

                  // title and icons
                  Wrap(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                        const Icon(
                          Icons.arrow_left_sharp,
                          color: umgBleu,
                          size: 25,
                        ),
                        Text(gName=glass[g]['glasse'][0]['name']),
                        const Icon(
                          Icons.arrow_right_sharp,
                          color: umgBleu,
                          size: 25,
                        )
                      ]),
                    ],
                  ),
                ],
              ),
            ),
        ]);
  }
}
