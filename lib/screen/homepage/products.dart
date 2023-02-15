// import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
// import 'homepage.dart';

class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> containers = [];

    for (int i = 0; i < 9; i++) {
      containers.add(
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(children: [
            Column(
              children: [
                Image.asset("assets/img/verre.jpg"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: (){
                      print("je suis cliquée");
                    }, icon: const Icon(Icons.arrow_back_outlined, color: Colors.blue,)),

                    Image.asset("assets/img/fluo rose.jpg",
                        height: 45, width: 45),
                    IconButton(onPressed: (){
                      print("je ne suis pas cliquée");

                    }, icon: const Icon(Icons.arrow_forward_outlined, color: Colors.blue,))
                  ],
                ),
              ],
            )
          ]),
        ),
      );
    }

    return GridView.count(
      crossAxisCount: 2,
      // rapport entre l'axe principal et transversal de chaque enfant
      childAspectRatio: 0.80,
      shrinkWrap: true,
      children:
        containers,
    );
  }
}
