import 'package:assignment1_flutter_part2/post_buttons_design.dart';
import 'package:assignment1_flutter_part2/post_model.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostModel post;
  PostWidget({required this.post});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(start: 5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: Icon(
                  post.personImage,
                  color: Colors.white,
                  size: 40,
                ),
                backgroundColor: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    post.ownerName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '${post.time}h',
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 14
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.public,
                        size: 15,
                        color: Colors.grey.shade700,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width:double.infinity,
                    child: Text(
                      post.postDesc,
                      style: TextStyle(
                          fontSize: 24
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            post.numberOfLikes.toString(),
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/like.jpg',
                            height: 50,
                            width: 50,
                          )
                        ],
                      ),
                      Text(
                        '${post.numberOfComments} Comments',
                        style: TextStyle(
                            fontSize: 16
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PostButtonsDesign(
                    imageUrl: 'assets/singleLike.jpg',
                    btnText: 'Like',
                  ),
                  PostButtonsDesign(
                    imageUrl: 'assets/comment.jpg',
                    btnText: 'Comment',
                  ),
                  PostButtonsDesign(
                    imageUrl: 'assets/share.png',
                    btnText: 'Share',
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
