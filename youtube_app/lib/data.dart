class User {
  final String username;
  final String profileImageUrl;
  final String subscribers;

  const User({
    required this.username,
    required this.profileImageUrl,
    required this.subscribers,
  });
}

const User currentUser = User(
  username: 'Jennierubyjane Official',
  profileImageUrl:
      'https://yt3.ggpht.com/ytc/AKedOLR370wZkUW6W6am9USVPMu3sbK-_Mb_f_LJjKx6=s176-c-k-c0x00ffffff-no-rj',
  subscribers: '7.49M',
);

class Video {
  final String id;
  final User author;
  final String title;
  final String thumbnailUrl;
  final String duration;
  final DateTime timestamp;
  final String viewCount;
  final String likes;
  final String dislikes;

  const Video({
    required this.id,
    required this.author,
    required this.title,
    required this.thumbnailUrl,
    required this.duration,
    required this.timestamp,
    required this.viewCount,
    required this.likes,
    required this.dislikes,
  });
}

