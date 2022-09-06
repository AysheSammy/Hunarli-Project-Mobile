import 'package:ayshe/Pages/categories/expansion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../categoryData.dart';

class CategoryTab extends StatefulWidget {
  const CategoryTab({Key ?key}) : super(key: key);

  @override
  State<CategoryTab> createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  final _key =  const PageStorageKey('ExpansionTile');
  int? selected;
  
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Expansion(a: a, b: categories, index: index, key: _key,);
      },
      itemCount: categories.length,
    );
  }
}
