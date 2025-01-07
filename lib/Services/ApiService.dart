import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/PostModel.dart';

class ApiService {
  static const String apiUrl = 'https://api.hive.blog';

  Future<List<PostModel>> fetchPosts() async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        "jsonrpc": "2.0",
        "method": "bridge.get_ranked_posts",
        "params": {
          "sort": "trending",
          "tag": "",
          "observer": "alice",
        },
        "id": 1
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['result'] is List) {
        final List<PostModel> posts = (data['result'] as List).map((item) {
          return PostModel.fromJson(item);
        }).toList();
        return posts;
      } else {
        throw Exception('Unexpected data structure for result');
      }
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
