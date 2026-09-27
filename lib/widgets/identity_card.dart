import 'package:flutter/material.dart';

class IdentityCard extends StatelessWidget {
  const IdentityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              child: Icon(
                Icons.person,
                size: 35,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Syifa Nurul Afifah',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),

                  Row(
                    children: [
                      Icon(
                        Icons.badge_outlined,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text('NIM: 20240040286'),
                    ],
                  ),

                  SizedBox(height: 4),

                  Row(
                    children: [
                      Icon(
                        Icons.school_outlined,
                        size: 18,
                      ),
                      SizedBox(width: 6),
                      Text('Teknik Informatika - TI24 G'),
                    ],
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