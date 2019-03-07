import 'dart:core';

import 'package:flutter_app/model/author.dart';

class Idea {
  Author author;
  int created_time;
  String content;
  String imageurl;

  int comment_count;
  int follower_count;
  int favor_count;



  Idea.fromJson(Map data) {
    created_time = data['created_time'];
    content = data['content'];
    imageurl = data['imageurl'];

    comment_count = data['comment_count'];
    follower_count = data['follower_count'];
    favor_count = data['favor_count'];

    if (data['author'] != null) {
      author = Author.fromJson(data['author']);
    }
  }
}