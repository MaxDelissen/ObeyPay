import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final bool isCertified;

  const UserCard({
    Key? key,
    required this.name,
    required this.description,
    required this.imageUrl,
    this.isCertified = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: NetworkImage(imageUrl),
              width: 100.0,
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                if (isCertified)
                  const Text(
                    'Certified',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12.0,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 10.0),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(description),
          ],
        ),
      ),
    );
  }
}