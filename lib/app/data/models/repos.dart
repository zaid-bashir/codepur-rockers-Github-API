import 'package:flutter/widgets.dart';

class Repos {
  String name, htmlUrl;

  Repos({
    @required this.name,
    @required this.htmlUrl,
  });

  static Repos fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Repos(
      name: map['name'],
      htmlUrl: map['html_url'],
    );
  }

  Repos.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    htmlUrl = json['html_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['htmlUrl'] = this.htmlUrl;
    return data;
  }
}
