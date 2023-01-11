import 'package:flutter/material.dart';
import 'package:umg/main.dart';
import '../../partials/category.dart';
import '../../partials/real_appbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  const AppBarWithoutIcon(),
      floatingActionButton: const Category(),
      body: FractionallySizedBox(
        widthFactor: 1,
        heightFactor: 1,
        child: Container(
          color: umgBleu,
          child: Column(
            children: [
              GestureDetector(
              onTap: () => print("I am tapped !"),
              child: Container(
                height: 150,
                width: 1000,
                color: Colors.brown,
              ),
              ),

              Container(
                height: 150,
                width: 1000,
                color: Colors.green,
              ),
            ],
          ),
      ),
      )

    );
  }
}

