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
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
    for (int i=0;i<6;i++)
      Container(
        padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        margin: EdgeInsets.symmetric(vertical: 3,horizontal: 4),
        decoration: BoxDecoration(
          color: blanc,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // Navigator.pushNamed(context, routeName)
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                // child: Image.asset("assets/img/mojito/mojito-40cl-incassable-reutilisable-recyclable.jpg"),
                child: Image.asset("assets/img/situation/$i.jpg", height: 120, width: 120,),
              ),
            ),
          Carousel(),

          ],
        ),
      ),
    ],
    );
  }
}
