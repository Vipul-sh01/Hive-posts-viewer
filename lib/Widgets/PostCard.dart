import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/Constants.dart';
import 'PostFooter.dart';
import 'PostHeader.dart';

class PostCard extends StatelessWidget {
  final dynamic post;

  const PostCard({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: AppConstants.cardMargin,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: AppConstants.cardPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostHeader(post: post),
            const SizedBox(height: 12),
            Text(
              post.title,
              style: AppConstants.titleTextStyle,
            ),
            const SizedBox(height: 8),
            Text(
              post.body.split('\n').first,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppConstants.bodyTextStyle,
            ),
            const SizedBox(height: 12),
            PostFooter(post: post),
          ],
        ),
      ),
    );
  }
}