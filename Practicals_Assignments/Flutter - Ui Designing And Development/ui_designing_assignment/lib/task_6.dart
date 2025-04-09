import 'package:flutter/material.dart';

// Custom ProfileCard Widget
class ProfileCard extends StatelessWidget {
  final String name;
  final String bio;
  final String imageUrl;

  const ProfileCard({
    super.key,
    required this.name,
    required this.bio,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    bio,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Example Usage of ProfileCard inside a Scaffold
class ProfileCardExampleScreen extends StatelessWidget {
  const ProfileCardExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task 6: Profile Card")),
      body: const Center(
        child: ProfileCard(
          name: "John Doe",
          bio: "Flutter Developer",
          imageUrl: "https://i.pravatar.cc/300",
        ),
      ),
    );
  }
}
