import 'package:flutter/material.dart';
import 'package:umg/main.dart';

class SubMenu extends StatelessWidget {
  const SubMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: umgVert,
      ),
      child: const Padding(padding: EdgeInsets.all(5),
        child: Center(
          child:  Text("Notre catalogue de verre", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
        ),),
    );
  }
}
