import 'package:flutter/material.dart';
import 'package:umg/main.dart';



class TheAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TheAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(50);

  // return notre navbar
  @override
  Widget build(BuildContext context) {
    return AppBar(
        iconTheme: const IconThemeData(
        color: umgBottomNavBlack,
        ),
      backgroundColor: Colors.white,
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          // Image.asset('assets/banner/logo.png',),
          // Icon(Icons.sort, size: 30, color: Colors.green,),
          Padding(padding: EdgeInsets.only(
              left: 20
          ),
              child: Text("UnbreakMyGlass",
                style: TextStyle(color: umgBleu,fontWeight: FontWeight.bold),),
              ),
            ],
      ),


    );
  }
}