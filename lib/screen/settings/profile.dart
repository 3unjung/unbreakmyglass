import 'package:flutter/material.dart';
import '../../partials/category.dart';
import '../../partials/real_appbar.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  const AppBarWithoutIcon(),
      floatingActionButton: const Category(),
      body: Container(),

    );
  }
}

