import 'package:flutter/material.dart';

// create feed stateful widget with following properties
// username
// profile picture
// post image
// post description
// post likes
// post comments

class FeedCard extends StatefulWidget {
  FeedCard({Key? key}) : super(key: key);

  @override
  State<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {

  late String username;
  late String profilePicture;
  late String postImage;
  late String postDescription;
  late int postLikes;
  late int postComments;
  bool _customIcon = false;

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
                height: 20,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  'Lorem ipsum dolor sit amet',
                  // consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // align the text to the left
          Align(
            alignment: Alignment.centerLeft,
            child: ExpansionTile(
              title: Text("View all 100 comments"),
              trailing: Icon(
                _customIcon ? Icons.arrow_drop_down_circle : Icons.arrow_drop_down,
              ),
              onExpansionChanged: (bool expanded) {
                setState(() => _customIcon = expanded);
              },
              children: [
                ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    title: Text("Comment"),
                  ),
                  itemCount: 100,
                ),]
              ),
            ),
          // SizedBox(
          //   height: 10,
          // ),
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
                child:
                    TextField(
                    decoration: InputDecoration(
                      hintText: 'Add your opinions...',
                      border: InputBorder.none,
                    ),
                  ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Post',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}