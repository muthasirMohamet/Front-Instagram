import 'package:flutter/material.dart';

class MyStory extends StatelessWidget {
  const MyStory({super.key, required this.imagePath, required this.storyTitle});
  
  final String imagePath;
  final String storyTitle;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 5),
          Text(storyTitle), 
        ],
      ),
    );
  }
}
