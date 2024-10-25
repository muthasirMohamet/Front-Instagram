import 'package:flutter/material.dart';

class InstagramHome extends StatelessWidget {
  const InstagramHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram',
          style: TextStyle(
            fontFamily: 'Billabong', 
            fontSize: 28,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              print("Likes button pressed");
            },
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              print("Direct messages button pressed");
            },
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: ListView(
        children: [
          // Stories Section
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // number of stories
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Column(
                    children:  [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                            'https://via.placeholder.com/150'), // Placeholder image
                      ),
                      SizedBox(height: 5),
                      Text('User Name'),
                    ],
                  ),
                );
              },
            ),
          ),
          // Post Section (Feed)
          const Divider(),
          for (int i = 0; i < 5; i++) const PostWidget(),
        ],
      ),
      
    );
  }
}

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Post Header
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          ),
          title: const Text('User Name'),
          subtitle: const Text('Location'),
          trailing: IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ),
        // Post Image
        Image.network(
          'https://via.placeholder.com/500',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        // Post Actions
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                print("Like button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.comment),
              onPressed: () {
                print("Comment button pressed");
              },
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                print("Share button pressed");
              },
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.bookmark_border),
              onPressed: () {
                print("Save button pressed");
              },
            ),
          ],
        ),
        // Post Likes and Comments
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text('Liked by user123 and 500 others'),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Text('View all 50 comments'),
        ),
      ],
    );
  }
}