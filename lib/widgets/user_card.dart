import 'package:flutter/material.dart';
import 'package:obeypay/widgets/certified_badge.dart';

import '../utils/objects/user.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key? key,
    required this.user,
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
            SizedBox(
              width: 280,
              height: 300,
                child: Image(image: NetworkImage(user.profilePictureUrl!))),
            const SizedBox(height: 10.0),
            Text(
              user.name!,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            if (user.isCertified!)
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
              user.description!,
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
