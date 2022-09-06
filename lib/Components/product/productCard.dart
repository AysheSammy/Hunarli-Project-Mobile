import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width / 2) - 16,
      height: 210,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black, width: 5),
          right: BorderSide(color: Colors.black, width: 5),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Product image
          Stack(
            alignment: AlignmentDirectional.topEnd,
            fit: StackFit.loose,
            children: [
              Image.asset(
                'assets/product.png',
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),

              // Discount
              Container(
                width: 30,
                height: 18,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(238, 255, 0, 1)),
                child: const Center(
                  child: Text(
                    '-20%',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),

          // Product Name
          const Padding(
            padding: EdgeInsets.only(
              left: 6,
              right: 6,
              top: 10,
            ),
            child: Text(
              'Product Name Goes Here Like Etli Somsa',
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                overflow: TextOverflow.fade,
              ),
            ),
          ),

          // Seller username
          const Padding(
            padding: EdgeInsets.only(
              top: 5,
              left: 6,
              right: 5,
            ),
            child: Text(
              'Satyjy ady',
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(132, 132, 132, 1),
              ),
            ),
          ),

          // Cost
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // todo: add if else
              Container(
                padding: const EdgeInsets.all(5),
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(238, 255, 0, 1)),
                child: const Text(
                  'täze',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),

              // product cost
              Container(
                padding: const EdgeInsets.all(5),
                // color: const Color.fromRGBO(36, 36, 36, 1),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(36, 36, 36, 1),
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Text(
                          '20.20M',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      isLiked
                          ? SvgPicture.asset('likedHeart.svg')
                          : SvgPicture.asset('Heart.svg')
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
