import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    void ApiCall() {
      final response =
          http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

      // if (response.statusCode == 200) {
      //   return Album.fromJson(
      //       jsonDecode(response.body) as Map<String, dynamic>);
      // } else {
      //   throw Exception('Failed to load album');
      // }
    }

    return Container();
  }
}
