import 'package:ayshe/Pages/categoryPage.dart';
import 'package:ayshe/Pages/likes/likes_page.dart';
import 'package:ayshe/Pages/registration/registration_page.dart';
import 'package:ayshe/Pages/sell/sellForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ayshe/Pages/homePage.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentPageIndex = 0;
  List<Widget> pages = [];

  var homePageKey = const PageStorageKey('home_page_kay');
  var categoriesKey = const PageStorageKey('categories_key');
  var sellPageKey = const PageStorageKey('sell_page_key');
  var likesPageKey = const PageStorageKey('likes_page_key');
  var profilPageKey = const PageStorageKey('profil_page_key');

  @override
  void initState() {
    // TODO: implement initState
    HomePage homePage = HomePage(homePageKey);
    Category category = Category();
    SellForm sellForm = SellForm(sellPageKey);
    LikesPage likesPage = LikesPage(likesPageKey);
    RegistrationPage registrationPage = RegistrationPage(profilPageKey);

    pages = [
      homePage,
      category,
      sellForm,
      likesPage,
      registrationPage,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/BottomNavBarIcons/home.svg'),
            activeIcon:
                SvgPicture.asset('assets/BottomNavBarIcons/home-active.svg'),
            label: 'Baş sahypa',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/BottomNavBarIcons/category.svg'),
            activeIcon: SvgPicture.asset(
                'assets/BottomNavBarIcons/category-active.svg'),
            label: 'Satyn al',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/BottomNavBarIcons/sell.svg'),
            activeIcon:
                SvgPicture.asset('assets/BottomNavBarIcons/sell-active.svg'),
            label: 'Satyş',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/BottomNavBarIcons/likes.svg'),
            activeIcon:
                SvgPicture.asset('assets/BottomNavBarIcons/likes-active.svg'),
            label: 'Halanlarym',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('BottomNavBarIcons/profil.svg'),
            activeIcon:
                SvgPicture.asset('BottomNavBarIcons/profil-active.svg'),
            label: 'Profil',
          ),
        ],
        currentIndex: _currentPageIndex,
        onTap: (change) {
          setState(() {
            _currentPageIndex = change;
          });
        },
      ),
    );
  }
}
