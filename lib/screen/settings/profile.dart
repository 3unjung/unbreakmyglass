import 'package:flutter/material.dart';
import 'package:umg/main.dart';
import 'package:umg/screen/settings/tasks.dart';

import '../../partials/category.dart';
import '../../partials/real_appbar.dart';


class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  const AppBarWithoutIcon(),
      floatingActionButton: const Category(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 1000,
              decoration: BoxDecoration(
                  color: umgBleu,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/banner/LOGO.jpg", height: 88,width: 88,),
                  Text("UnbreakMyGlass")
                ],
              ),
            ),
            Tasks(),
          ],
        ),
      ),
    );
  }
}

