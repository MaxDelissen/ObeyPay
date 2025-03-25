import 'package:flutter/material.dart';
import 'package:obeypay/widgets/certified_badge.dart';

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
      color: Colors.black,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(31.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: NetworkImage(imageUrl)),
            const SizedBox(height: 10.0),
            Text(
              name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            if (isCertified)
              //const Text('Certified', style: TextStyle(fontSize: 10.0)),
              CertifiedBadge(),
            const SizedBox(height: 17.0),
            const Text(
              'Additional Info',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 255, 75)
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 255, 70)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
