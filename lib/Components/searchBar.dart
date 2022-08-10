import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "search result");
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        String sugText = "suggestionList[index]";
        return ListTile(
          title: RichText(
            text: TextSpan(
              text: sugText.substring(0, sugText.indexOf(query)),
              style: const TextStyle(color: Colors.grey),
              children: [
                TextSpan(
                  text: sugText.substring(sugText.indexOf(query),
                      sugText.indexOf(query) + query.length),
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: sugText.substring(
                      sugText.indexOf(query) + query.length, sugText.length),
                  style: const TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
      itemCount: 5,
    );
  }
}
