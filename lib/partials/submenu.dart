import 'package:flutter/material.dart';
import 'package:umg/main.dart';


class SubMenu extends StatelessWidget {
  const SubMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // hauteur temporaire
      height: 500,
      padding: const EdgeInsets.only(top: 15),
      decoration: const BoxDecoration(
        color: blanc,
        borderRadius: BorderRadius.only(
          // topLeft: Radius.circular(35),
          // topRight: Radius.circular(35),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            // padding: EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: umgVert, width: 2),
            ),
            child: Row(
              children: [
                SizedBox(
                  // margin: EdgeInsets.only(left: 5),
                  height: 50,
                  // width: 300,

                  // organised by + filter block
                  child: Wrap(
                    spacing: 100,
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.add_road_rounded),),
                          Column(
                            children: const [
                              Text("Organisé par"),
                              Text("défaut",
                                style: TextStyle(color: Colors.grey,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w900),),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.filter_alt_outlined),),
                          const Text("Filter"),
                        ],
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
