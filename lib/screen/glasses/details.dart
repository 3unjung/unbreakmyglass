import 'package:flutter/material.dart';
import '/partials/cus_appbar.dart';


class DetailsGlasse extends StatefulWidget {
  const DetailsGlasse({Key? key}) : super(key: key);

  @override
  State<DetailsGlasse> createState() => _DetailsGlasseState();
}

class _DetailsGlasseState extends State<DetailsGlasse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TheAppBar(),
    );
  }
}
