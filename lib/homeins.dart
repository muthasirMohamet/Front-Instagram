import 'package:flutter/material.dart';
import 'package:instagramflutter/Components/post.dart';
import 'package:instagramflutter/Components/story.dart';

class HomeInstag extends StatefulWidget {
  const HomeInstag({super.key});

  @override
  _HomeInstagState createState() => _HomeInstagState();
}

class _HomeInstagState extends State<HomeInstag> {
  int _currentIndex = 0; // To keep track of the selected index

  // Dummy screens to demonstrate the navigation
  final List<Widget> _screens = [
    // Home screen content
    const HomeScreen(),
    const SearchScreen(), // Placeholder for Search screen
    const AddScreen(),     // Placeholder for Add new post screen
    const LikesScreen(),   // Placeholder for Likes screen
    const ProfileScreen(),  // Placeholder for Profile screen
  ];

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
            onPressed: () {
              print('Liked');
            },
            icon: const Icon(Icons.favorite),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              print('Direct Message!');
            },
            icon: const Icon(Icons.message_rounded),
          ),
        ],
      ),
      body: _screens[_currentIndex], // Display the current screen based on the selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Indicates the selected index
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected index
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

// Example Home Screen Widget
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Stories on importing the story.dart
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              MyStory(imagePath: 'Images/marya.jpg', storyTitle: 'Maryan'),
              MyStory(imagePath: 'Images/hafsa.jpg', storyTitle: 'Hafsa'),
              MyStory(imagePath: 'Images/sawir2.jpg', storyTitle: 'Xeeb'),
              MyStory(imagePath: 'Images/sawir2.jpg', storyTitle: 'Xeeb'),
              MyStory(imagePath: 'Images/sawir2.jpg', storyTitle: 'Xeeb'),
              MyStory(imagePath: 'Images/hafsa.jpg', storyTitle: 'Hafsa'),
            ],
          ),
        ),
        SizedBox(height: 15), // Optional spacing between stories and posts
        // Posts
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyPost(
                  profilePic: 'Images/abdi.jpeg',
                  userName: 'AbdiQasim Salaad Hassan',
                  post: 'Images/abdii.jpeg',
                ),
                SizedBox(height: 20),
                MyPost(
                  profilePic: 'Images/wasarad.jpeg',
                  userName: 'Wasaarada Beeraha Somalia',
                  post: 'Images/sawir2.jpg',
                ),
                SizedBox(height: 20),
                MyPost(
                  profilePic: 'Images/abdi.jpeg',
                  userName: 'AbdiQasim Salaad Hassan',
                  post: 'Images/abdii.jpeg',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Placeholder Widgets for other screens
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Search Screen'));
  }
}

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Add New Post Screen'));
  }
}

class LikesScreen extends StatelessWidget {
  const LikesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Likes Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Profile Screen'));
  }
}
