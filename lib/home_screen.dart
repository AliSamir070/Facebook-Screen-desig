import 'package:assignment1_flutter_part2/post_buttons_design.dart';
import 'package:assignment1_flutter_part2/post_model.dart';
import 'package:assignment1_flutter_part2/post_widget.dart';
import 'package:assignment1_flutter_part2/story_model.dart';
import 'package:assignment1_flutter_part2/story_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<StoryModel> stories = [
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
      StoryModel(ownerName: 'Owner',imageUrl:'assets/facebookStory.jpg',personPhoto:Icons.person),
    ];
    List<PostModel> posts = [
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person),
      PostModel(ownerName: 'Owner', postDesc: 'My post', numberOfComments: 100, numberOfLikes: 100, time: 3, personImage:Icons.person)

    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
              Container(
                height: 180,
                padding: EdgeInsetsDirectional.all(10),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,

                    itemBuilder: (context,index){
                      return StoryWidget(story: stories[index]);
                    },
                    separatorBuilder: (context,index){
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: stories.length),
              ),
              SizedBox(
              height: 5,
            ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index) => PostWidget(post: posts[index]),
                  separatorBuilder: (context,index)=>Container(
                    margin: EdgeInsetsDirectional.only(bottom: 10),
                    height: 1,
                    width: double.infinity,
                    color: Colors.grey,
                  ),
                  itemCount: posts.length)
          ],
        ),
      ),
    );
  }
}

