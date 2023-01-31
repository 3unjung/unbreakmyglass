import 'package:flutter/material.dart';
import 'package:umg/main.dart';

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Text("NOS VERRES INCASSABLES, RÉUTILISABLES & PERSONNALISABLES", style: TextStyle(fontSize: 18, color: umgVert, fontWeight: FontWeight.w400),),
            Container(
              child: Column(
                children: [
                  Text("Nos contacts:"),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(15)),

                      Icon(Icons.ac_unit_outlined, color: Colors.red,),
                      Text("Notre site internet"),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(15)),

                      Icon(Icons.build, color: Colors.blue,),
                      Text("Par téléphone: +33123456789"),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(15)),

                      Icon(Icons.email_outlined, color: Colors.purple,),
                      Text("Par Email: titouan_jeanseb@hotmail.fr"),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      );

  }
}
