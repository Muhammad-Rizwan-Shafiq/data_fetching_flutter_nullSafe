import 'package:flutter/material.dart';
import 'dart:convert';

class PostList{
  final List<PostModel>? posts;

  PostList({this.posts});
  factory PostList.fromJson(List<dynamic> parsedJson){
     // ignore: deprecated_member_use
     List<PostModel> posts=<PostModel>[];
     posts=parsedJson.map((i) => PostModel.fromJson(i)).toList();
     return PostList(posts: posts);

  }


}


class PostModel{
  int userId;
  int id;
  String title;
  String body;

  PostModel({required this.id,required this.userId,required this.title,required this.body});

  factory PostModel.fromJson(Map<String,dynamic> mappedData){
    return PostModel(
      userId: mappedData['userId'],
      id: mappedData['id'],
      title: mappedData['title'],
      body: mappedData['body'],

    );


  }
}