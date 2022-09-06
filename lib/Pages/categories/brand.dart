import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  // const Brand({Key? key}) : super(key: key);
  String img;
  String brandName;
  Brand({
    required this.img,
    required this.brandName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/$img',
            width: MediaQuery.of(context).size.width / 4,
            height: 40,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              brandName,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
