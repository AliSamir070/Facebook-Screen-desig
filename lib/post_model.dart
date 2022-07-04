import 'package:flutter/material.dart';

class PostModel{
  String ownerName;
  String postDesc;
  int numberOfComments;
  int numberOfLikes;
  int time;
  IconData personImage;

  PostModel(
      { required this.ownerName,
        required this.postDesc,
        required this.numberOfComments,
        required this.numberOfLikes,
        required this.time,
        required this.personImage
      });
}