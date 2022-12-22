import 'package:flutter/material.dart';
import 'package:umg/screen/glasses/glasses_list.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.arrow_left_sharp),
        Container(
          // height: 15,
          // width: 15,
          child: Row(
            children: [
              Container(
                height: 15,
                width: 15,
                color: Colors.red,
              ),
              Container(
                height: 15,
                width: 15,
                color: Colors.purple,
              ),
              Container(
                height: 15,
                width: 15,
                color: Colors.green,
              ),
            ],
          ),
        ),
        Icon(Icons.arrow_right_sharp),
      ],
    );
  }
}
