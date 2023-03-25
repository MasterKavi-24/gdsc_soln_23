import 'package:flutter/material.dart';

// create feed stateful widget with following properties
// username
// profile picture
// post image
// post description
// post likes
// post comments

class Feed extends StatefulWidget {
  Feed({Key? key}) : super(key: key);

  @override
  State<Feed> createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  late String username;
  late String profilePicture;
  late String postImage;
  late String postDescription;
  late int postLikes;
  late int postComments;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20)
      ),
      
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  'assets/images/default_dp.jpg',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'username',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Icon(
                Icons.more_vert,
                size: 30,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            // border
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Image(
              image: AssetImage(
              'assets/images/job1.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'Saved by 100 others',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Icon(
              //   Icons.favorite_border,
              //   size: 30,
              // ),
              // SizedBox(
              //   width: 10,
              // ),
              // Icon(
              //   Icons.comment,
              //   size: 30,
              // ),
              // SizedBox(
              //   width: 10,
              // ),
              // Icon(
              //   Icons.send,
              //   size: 30,
              // ),
              Spacer(),
              Icon(
                Icons.bookmark_border,
                size: 30,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'username',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              // keep the text within a container of fixed width
              // so that it doesn't overflow
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // align the text to the left
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'View all 100 comments',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage(
                  'assets/images/default_dp.jpg',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a comment...',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}