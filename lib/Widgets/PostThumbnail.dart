import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/Constants.dart';

class PostThumbnail extends StatelessWidget {
  final String? thumbnail;

  const PostThumbnail({this.thumbnail, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: thumbnail != null && thumbnail!.isNotEmpty
            ? CachedNetworkImage(
                imageUrl: thumbnail!,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              )
            : Container(
                color: AppConstants.avatarPlaceholderColor,
                child: const Center(
                  child: Icon(Icons.image, size: 24),
                ),
              ),
      ),
    );
  }
}
