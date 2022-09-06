import 'package:flutter/material.dart';

// BottomNavBar
import 'BottomNavigationBar/bottomNavigationBar.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
            TargetPlatform.values,
            value: (dynamic _) => const FadeUpwardsPageTransitionsBuilder(),
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color.fromRGBO(252, 100, 33, 1),
          unselectedItemColor: Color.fromRGBO(185, 188, 190, 1),
          selectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(252, 100, 33, 1),
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(185, 188, 190, 1),
          ),
        ),
        fontFamily: 'Raleway',
        scaffoldBackgroundColor: const Color.fromRGBO(248, 248, 248, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          elevation: 0,
          iconTheme: IconThemeData(color: Color.fromRGBO(36, 36, 36, 1)),
        ),
      ),
      home: const MyApp(),
    ),
  );
}
