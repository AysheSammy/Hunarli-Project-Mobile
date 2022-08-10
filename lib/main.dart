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
