import 'package:assignment1_flutter_part2/story_model.dart';
import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryModel story;
  StoryWidget({required this.story});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        children: [
          Image.asset(
            story.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          CircleAvatar(
            child: Icon(
              story.personPhoto,
              color: Colors.white,
            ),
          ),
          Container(
            alignment: AlignmentDirectional.bottomStart,
            padding: EdgeInsetsDirectional.only(start: 20),
            width: double.infinity,
            child: Text(
              story.ownerName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold

              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
