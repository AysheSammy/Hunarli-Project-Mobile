import 'dart:convert';

import 'package:ayshe/JSONExample/takeJSON.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  // Future<PostsData>? datas;
  PostsData? postsData;
  Future<List<PostsData>> takeJson() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    return (json.decode(response.body) as List)
        .map((e) => PostsData.fromJson(e))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: takeJson(),
        builder: ((context, AsyncSnapshot<List<PostsData>> snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      radius: 25,
                      backgroundColor: Colors.blue,
                    ),
                    title: Text(
                      snapshot.data![index].title.toUpperCase(),
                      style: const TextStyle(color: Colors.blue),
                    ),
                    subtitle: Text(snapshot.data![index].body),
                    trailing: Text(snapshot.data![index].id.toString()),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.data.toString(),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
      ),
    );
  }
}
