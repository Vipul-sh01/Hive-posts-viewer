import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Constants/Constants.dart';
import '../Widgets/PostCard.dart';
import '../viewmodels/PostViewModel.dart';


class PostListScreen extends StatelessWidget {
  const PostListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Blog Posts'),
        backgroundColor: AppConstants.secondColor,
      ),
      body: Consumer<PostViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (viewModel.posts.isEmpty) {
            return const Center(child: Text('No posts found'));
          }

          return ListView.builder(
            itemCount: viewModel.posts.length,
            itemBuilder: (context, index) {
              final post = viewModel.posts[index];
              return PostCard(post: post);
            },
          );
        },
      ),
    );
  }
}