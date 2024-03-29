import 'package:flutter/material.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:umg/main.dart';
import 'package:umg/screen/glasses/details.dart';
import 'package:umg/screen/homepage/products.dart';
import '../screen/settings/profile.dart';
import '../verre_icons_icons.dart';
import '../gobelet_icons.dart';



class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return CircularMenu(
      alignment: Alignment.bottomRight,

      toggleButtonColor: umgVert,
      toggleButtonSize: 25.0,
      items: [
        CircularMenuItem(
            icon: VerreIcons.verre,//Icons.ac_unit_outlined,
            iconSize: 35,
            color: Colors.green,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const UmgApp()));
              setState(() {

              });
            }),
        CircularMenuItem(
            icon: GobeletDeMerde.image2vector,
            iconSize: 35,
            color: Colors.blue,
            onTap: ()  {
              setState(() {

              });
            }),
        CircularMenuItem(
            icon: Icons.restaurant,
            iconSize: 35,
            color: Colors.orange,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DetailsGlasse()));

              setState(() {

              });
            }),
        CircularMenuItem(
            icon: Icons.settings,
            color: Colors.grey,
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile()));

              setState(() {

              });
            }),
        // CircularMenuItem(
        //     icon: Icons.local_drink,
        //     color: Colors.brown,
        //     onTap: () {
        //       setState(() {
        //
        //       });
        //     })
      ],
    );
  }
}

