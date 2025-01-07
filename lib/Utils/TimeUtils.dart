import 'package:flutter/foundation.dart';

class TimeUtils {
  static String formatRelativeTime(String time) {
    try {
      final created = DateTime.parse(time);
      final now = DateTime.now();
      final difference = now.difference(created);
      if (difference.inHours < 24) {
        return '${difference.inHours} hours ago';
      } else {
        return '${difference.inDays} days ago';
      }
    } catch (e) {
      debugPrint('Error parsing time: $e');
      return 'N/A';
    }
  }
}


