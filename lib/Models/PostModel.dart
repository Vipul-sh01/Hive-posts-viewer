class PostModel {
  final String title;
  final String body;
  final String author;
  final String community;
  final String created;
  final String? thumbnail;
  final int votes;
  final int comments;

  PostModel({
    required this.title,
    required this.body,
    required this.author,
    required this.community,
    required this.created,
    this.thumbnail,
    required this.votes,
    required this.comments,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    final jsonMetadata = json['json_metadata'];
    String? thumbnail;

    if (jsonMetadata != null && jsonMetadata is Map && jsonMetadata['image'] != null) {
      List<dynamic> images = jsonMetadata['image'];
      if (images.isNotEmpty) {
        thumbnail = images[0];
      }
    }

    return PostModel(
      title: json['title'] ?? 'No title',
      body: json['body'] ?? '',
      author: json['author'] ?? 'Unknown',
      community: json['category'] ?? 'Unknown',
      created: json['created'] ?? '',
      thumbnail: thumbnail,
      votes: json['active_votes']?.length ?? 0,
      comments: json['children'] ?? 0,
    );
  }
}
