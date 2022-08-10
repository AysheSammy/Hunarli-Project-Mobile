import 'package:flutter/material.dart';

class productCard extends StatefulWidget {
  const productCard({Key? key}) : super(key: key);

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  int id = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      height: 210,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Container(
                width: 136,
                height: 136,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('product.png'), fit: BoxFit.fill),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
