import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String? _search;

  set search(String val) {
    _search = val;
  }

  String get search => _search!;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      height: 32,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: const Color.fromRGBO(102, 112, 133, 1),
          hintText: 'Gözleg',
          hintStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color.fromRGBO(152, 162, 179, 1)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(0),
            borderSide: const BorderSide(
              color: Color.fromRGBO(152, 162, 179, 1),
            ),
          ),
        ),
        style: const TextStyle(
          fontSize: 14,
          overflow: TextOverflow.visible,
          color: Colors.black,
        ),
        onChanged: (value) {
          _search = value;
        },
      ),
    );
  }
}
