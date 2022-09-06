import 'package:ayshe/Pages/categories/brand.dart';
import 'package:flutter/material.dart';

class UsersTab extends StatefulWidget {
  const UsersTab({Key? key}) : super(key: key);

  @override
  State<UsersTab> createState() => _UsersTabState();
}

class _UsersTabState extends State<UsersTab> {
  List mainBrands = [
    {
      'title': 'Aşhana',
      'brands': [
        {'brand_name': 'BRAND 1', 'img': 'brand.png'},
        {'brand_name': 'BRAND 2', 'img': 'brand.png'},
        {'brand_name': 'BRAND 3', 'img': 'brand.png'},
        {'brand_name': 'BRAND 4', 'img': 'brand.png'},
        {'brand_name': 'BRAND 5', 'img': 'brand.png'},
        {'brand_name': 'BRAND 6', 'img': 'brand.png'},
        {'brand_name': 'BRAND 7', 'img': 'brand.png'},
        {'brand_name': 'BRAND 8', 'img': 'brand.png'},
      ]
    },
    {
      'title': 'Egin-eşik',
      'brands': [
        {'brand_name': 'BRAND 1', 'img': 'brand.png'},
        {'brand_name': 'BRAND 2', 'img': 'brand.png'},
        {'brand_name': 'BRAND 3', 'img': 'brand.png'},
        {'brand_name': 'BRAND 4', 'img': 'brand.png'},
        {'brand_name': 'BRAND 5', 'img': 'brand.png'},
        {'brand_name': 'BRAND 6', 'img': 'brand.png'},
        {'brand_name': 'BRAND 7', 'img': 'brand.png'},
        {'brand_name': 'BRAND 8', 'img': 'brand.png'},
      ]
    },
    {
      'title': 'Şaý-sepler',
      'brands': [
        {'brand_name': 'BRAND 1', 'img': 'brand.png'},
        {'brand_name': 'BRAND 2', 'img': 'brand.png'},
        {'brand_name': 'BRAND 3', 'img': 'brand.png'},
        {'brand_name': 'BRAND 4', 'img': 'brand.png'},
        {'brand_name': 'BRAND 5', 'img': 'brand.png'},
        {'brand_name': 'BRAND 6', 'img': 'brand.png'},
        {'brand_name': 'BRAND 7', 'img': 'brand.png'},
        {'brand_name': 'BRAND 8', 'img': 'brand.png'},
      ]
    },
    {
      'title': 'Toý serpaýlar',
      'brands': [
        {'brand_name': 'BRAND 1', 'img': 'brand.png'},
        {'brand_name': 'BRAND 2', 'img': 'brand.png'},
        {'brand_name': 'BRAND 3', 'img': 'brand.png'},
        {'brand_name': 'BRAND 4', 'img': 'brand.png'},
        {'brand_name': 'BRAND 5', 'img': 'brand.png'},
        {'brand_name': 'BRAND 6', 'img': 'brand.png'},
        {'brand_name': 'BRAND 7', 'img': 'brand.png'},
        {'brand_name': 'BRAND 8', 'img': 'brand.png'},
      ]
    },
    {
      'title': 'Oýunjaklar',
      'brands': [
        {'brand_name': 'BRAND 1', 'img': 'brand.png'},
        {'brand_name': 'BRAND 2', 'img': 'brand.png'},
        {'brand_name': 'BRAND 3', 'img': 'brand.png'},
        {'brand_name': 'BRAND 4', 'img': 'brand.png'},
        {'brand_name': 'BRAND 5', 'img': 'brand.png'},
        {'brand_name': 'BRAND 6', 'img': 'brand.png'},
        {'brand_name': 'BRAND 7', 'img': 'brand.png'},
        {'brand_name': 'BRAND 8', 'img': 'brand.png'},
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 10),
              child: Text(mainBrands[index]['title']),
            ),
            SizedBox(
              height:
                  (70 * (mainBrands[index]['brands'].length / 4)).toDouble(),
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 4 / 3,
                crossAxisCount: 4,
                children: List.generate(
                  mainBrands[index]['brands'].length,
                  (i) => Brand(
                    img: mainBrands[index]['brands'][i]['img'],
                    brandName: mainBrands[index]['brands'][i]['brand_name'],
                  ),
                ),
              ),
            ),
          ],
        );
      },
      itemCount: mainBrands.length,
    );
  }
}
