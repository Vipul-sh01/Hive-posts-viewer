import 'package:flutter/material.dart';
import '../models/PostModel.dart';
import '../services/ApiService.dart';

class PostViewModel extends ChangeNotifier {
  List<PostModel> _posts = [];
  bool _isLoading = false;

  List<PostModel> get posts => _posts;
  bool get isLoading => _isLoading;

  PostViewModel() {
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
      _posts = await ApiService().fetchPosts();
      debugPrint('Fetched ${_posts.length} posts');
    } catch (error) {
      _posts = [];
      debugPrint('Error fetching posts: $error');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
