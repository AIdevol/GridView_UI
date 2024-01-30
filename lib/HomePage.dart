import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> images = [
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image3.jpg",
    "assets/image4.jpg",
    "assets/image5.jpg",
    "assets/image6.jpg",
    "assets/image7.jpg",
    "assets/image8.jpg",
    "assets/image9.jpg",
    "assets/image10.jpg",
    "assets/image11.jpg",
    "assets/image12.jpg",
    "assets/image13.jpg",
    "assets/image14.jpg",
    "assets/image15.jpg",
    "assets/image16.jpg",
    "assets/image17.jpg",
    "assets/image18.jpg",
    "assets/image19.jpg",
    "assets/image20.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: images.length,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        itemBuilder: (context, index) {
          return ClipRRect(
            child: Image.asset(images[index]),
            borderRadius: BorderRadius.circular(20.0),
          );
        },
      ),
    );
  }
}
