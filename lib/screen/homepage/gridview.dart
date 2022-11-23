import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Stragg extends StatelessWidget {
  const Stragg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return masonryLayout(context);

}

  Widget masonryLayout(BuildContext context) {
    return MasonryGridView.builder(
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 6,
      crossAxisSpacing: 8,
      gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: 20,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network("https://source.unsplash.com/random?sig=$index"),
        );
      },
    );
  }
}
