import 'package:flutter/cupertino.dart';
import '../Constants/Constants.dart';
import '../Utils/TimeUtils.dart';
import 'PostThumbnail.dart';

class PostHeader extends StatelessWidget {
  final dynamic post;

  const PostHeader({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PostThumbnail(thumbnail: post.thumbnail),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.author, style: AppConstants.authorTextStyle),
              const SizedBox(height: 2),
              Text(
                '${post.community} • ${TimeUtils.formatRelativeTime(post.created)}',
                style: AppConstants.communityTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}