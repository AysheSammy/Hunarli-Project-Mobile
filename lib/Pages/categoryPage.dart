import 'package:ayshe/Pages/categories/category.dart';
import 'package:ayshe/Pages/categories/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Category extends StatefulWidget {
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState

    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          width: 100,
          height: 60,
          child: SvgPicture.asset('assets/Logo.svg',
              width: 30, fit: BoxFit.contain),
        ),
        bottom: TabBar(
          labelStyle: const TextStyle(
            color: Colors.orange,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelStyle: TextStyle(
            color: Colors.grey[600],
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          labelColor: Colors.orange,
          indicatorColor: Colors.orange,
          unselectedLabelColor: Colors.grey[600],
          isScrollable: true,
          controller: tabController,
          tabs: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 40,
              child: const Center(
                child: Text('Kategoriýalar'),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 3,
              height: 40,
              child: const Center(
                child: Text('Satyjylar'),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          CategoryTab(),
          UsersTab(),
        ],
      ),
    );
  }
}
