import 'package:ayshe/Components/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ayshe/Components/product/productCard.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage(Key key) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> imageList = [
    Image.asset(
      "assets/banner1.jpg",
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/banner2.jpg",
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/banner3.jpg",
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    ),
    Image.asset(
      "assets/banner4.jpg",
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    ),
  ];

  String search = '';

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: SizedBox(
            width: 100,
            height: 60,
            child: SvgPicture.asset('assets/Logo.svg',
                width: 30, fit: BoxFit.contain),
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  const SizedBox(height: 8),

                  // Search Input
                  const SearchBar(),

                  const SizedBox(height: 8),

                  // Carousel Banner
                  CarouselSlider(
                    items: imageList
                        .map(
                          (e) => Container(
                            width: double.infinity,
                            height: 200,
                            child: e,
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 200,
                      viewportFraction: 1.0,
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),

                  // Carousel Indicators
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      imageList.length,
                      (index) => Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: _currentIndex == index ? 2.5 : 1.5,
                          backgroundColor: _currentIndex == index
                              ? const Color.fromRGBO(252, 100, 33, 1)
                              : const Color.fromRGBO(192, 192, 192, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Arzanladysdaky harytlar
            SliverPadding(
              padding: const EdgeInsets.only(top: 15),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    // Arzanladys teks & link
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Arzanladyşdaky harytlar',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 24,
                            color: Color.fromRGBO(252, 100, 33, 1),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 215,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisExtent: 140,
                          mainAxisSpacing: 15,
                          crossAxisSpacing: 15,
                        ),
                        itemBuilder: (context, index) {
                          return const Product();
                        },
                        itemCount: 9,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // New Products
            SliverPadding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 8, left: 16, right: 16),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Täze harytlar',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 24,
                          color: Color.fromRGBO(252, 100, 33, 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => const Product(),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
