import 'package:flutter/material.dart';
import 'homepage.dart';


class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      controller: scrollController,

      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],

          ),
        ),

        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),


        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),

        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.teal[100],
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            children: [
              const Text("THIS IS WILL BE"),
              Image.asset(
                "assets/img/verre.jpg",
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
