import 'package:ayshe/Components/product/productCard.dart';
import 'package:flutter/material.dart';

class LikesPage extends StatefulWidget {
  const LikesPage(Key key) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10),
          itemBuilder: (context, index) {
            return const Product();
          },
          itemCount: 9,
        ),
      ),
    );
  }
}
