import 'package:codehub/courses/fetch.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

class Fetch extends StatefulWidget {
  const Fetch({super.key});

  @override
  State<Fetch> createState() => _FetchState();
}

class _FetchState extends State<Fetch> {
  List<PostUser> postUser = [];

  Future<List<PostUser>> getPostApi() async {
    final reponse =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data = jsonDecode(reponse.body.toString());

    if (reponse.statusCode == 200) {
      for (var i in data) {
        postUser.add(PostUser.fromJson(i));
      }
      return postUser;
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch'),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPostApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: postUser.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(index.toString()),
                            subtitle: Text(postUser[index].name.toString()),
                          );
                        },
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
            
          ],
        ));
  }
}
