import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/Constants.dart';

class PostFooter extends StatelessWidget {
  final dynamic post;

  const PostFooter({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('\$${post.votes.toStringAsFixed(2)}',
            style: AppConstants.statsTextStyle),
        Row(
          children: [
            const Icon(Icons.thumb_up_alt_outlined, size: AppConstants.iconSize),
            const SizedBox(width: 4),
            Text(post.votes.toString(), style: AppConstants.smallTextStyle),
            const SizedBox(width: 16),
            const Icon(Icons.comment_outlined, size: AppConstants.iconSize),
            const SizedBox(width: 4),
            Text(post.comments.toString(), style: AppConstants.smallTextStyle),
          ],
        ),
      ],
    );
  }
}