import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:umg/main.dart';
import 'package:umg/screen/glasses/glasses_list.dart';

class NavBarBottom extends StatefulWidget {
  const NavBarBottom({Key? key}) : super(key: key);

  @override
  State<NavBarBottom> createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: umgVert,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),

        child: GNav(
          iconSize: 30,
          // espacement entre l'icon et le label
          gap: 7,
          backgroundColor: Colors.pink,
          // les liens actifs
          activeColor: Colors.black,
          tabBackgroundColor: Colors.pinkAccent,
          // espacement par rapport au container
          padding: const EdgeInsets.all(7),

          tabs: [
            GButton(
              icon: Icons.home,
              text: "Home",
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const DishesScreen()));
              },
            ),
            GButton(
              icon: Icons.favorite_border,
              text: "Likes",
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GlassesList()));
              },
            ),
            GButton(
              icon: Icons.settings,
              text: "Settings",onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const GlassesList()));
            },
            ),

            GButton(
              icon: Icons.local_pizza_outlined,
              text: "Pizzas", onPressed: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const GlassesList()));
            },)
          ],
        ),
      ),
    );;
  }
}
