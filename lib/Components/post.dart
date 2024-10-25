import 'package:flutter/material.dart';

class MyPost extends StatelessWidget {
  const MyPost({super.key, required this.profilePic, required this.userName, required this.post});

  final String profilePic;
  final String userName;
  final String post;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(profilePic), 
                radius: 20, 
              ),
              const SizedBox(width: 5),
              Text(
                userName,
                style: const TextStyle(
                  fontSize: 16,
                  // fontWeight: FontWeight.bold, 
                ),
              ),
            ],
          ),
          const SizedBox(height: 5), 
          const Divider(
            color: Colors.grey,
            thickness: 1,
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(20), 
            child: Card(
              child: SizedBox(
                width: double.infinity, // Expand the image to full width
                child: Image.asset(
                  post,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10), 
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  print("Favorite button pressed");
                },
                child: const Icon(
                  Icons.favorite_border,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: () {
                  print("Comment button pressed");
                },
                child: const Icon(
                  Icons.comment,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 4),
              GestureDetector(
                onTap: () {
                  print("Send button pressed");
                },
                child: const Icon(
                  Icons.send,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              const Spacer(), // This will push the bookmark icon into the right
              GestureDetector(
                onTap: () {
                  print("Save button pressed");
                },
                child: const Icon(
                  Icons.bookmark_border,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
