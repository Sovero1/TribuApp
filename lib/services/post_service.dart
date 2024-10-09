import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:tribu_app/models/post.dart';

class PostService {
  Future<List<Post>> fetchAll() async {
    List<Post> posts = [];
    try {
      final String response = await rootBundle.loadString("assets/json/post.json");
      final List<dynamic> data = jsonDecode(response);
      posts = data.map((map) => Post.fromMap(map as Map<String, dynamic>)).toList();
    } catch (e) {
      print('Error al cargar los posts: $e');
    }
    return posts;
  }
}
