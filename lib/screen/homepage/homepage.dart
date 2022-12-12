import 'package:flutter/material.dart';
import 'package:umg/partials/submenu.dart';
import '/partials/cus_appbar.dart';
import 'package:hidable/hidable.dart';
import '/screen/homepage/gridview.dart';
import 'package:umg/main.dart';

import '/partials/category.dart';
import '/screen/homepage/products.dart';

final ScrollController scrollController = ScrollController();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: Hidable(controller: scrollController,wOpacity: false,child: const NavBarBottom(),),
      floatingActionButton: const Category(),
      body: ListView(
        children: [
          const TheAppBar(),
          // body grisé
          SubMenu(),
        ],
      ),
    );
  }
}
