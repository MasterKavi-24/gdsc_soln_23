// create an instagram like search screen

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          // child: Avatar.medium(streamagramUser: widget.userData),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(widget.user.id, style: AppTextStyle.textStyleBold),
              Text(
                "username"
                // widget.userData.fullName,
                // style: AppTextStyle.textStyleFaded,
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}