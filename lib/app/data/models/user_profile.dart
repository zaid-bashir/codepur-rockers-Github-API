import 'package:flutter/widgets.dart';

class UserProfile {
  String name, avatarUrl, bio;
  int followers, following;

  UserProfile({
    @required this.name,
    @required this.avatarUrl,
    @required this.bio,
    @required this.followers,
    @required this.following,
  });

  UserProfile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bio = json['bio'];
    avatarUrl = json['avatar_url'];
    followers = json['followers'];
    following = json['following'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['bio'] = this.bio;
    data['avatarUrl'] = this.avatarUrl;
    data['followers'] = this.followers;
    data['following'] = this.following;
    return data;
  }
}
