import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String profilePicUrl;
  final String userName;
  final String userCareer;
  final String postText;
  final String postImageUrl;
  final String postReacciones;
  final String postComentarios;

  const PostCard({
    Key? key,
    required this.profilePicUrl,
    required this.userName,
    required this.userCareer,
    required this.postText,
    required this.postImageUrl,
    required this.postReacciones,
    required this.postComentarios,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header (Profile picture, User info)
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(profilePicUrl), // Profile picture
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(userCareer), // User's career
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Post text
            Text(postText),

            // Post image
            const SizedBox(height: 10),
            Image.network(
              postImageUrl, // Image from URL
              fit: BoxFit.cover,
            ),

            // Icons (Like, Comment)
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                Text(postReacciones),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline),
                ),
                Text(postComentarios),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
