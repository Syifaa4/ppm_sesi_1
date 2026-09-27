import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int counter;

  const CounterDisplay({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    final bool isEven = counter % 2 == 0;

    return Column(
      children: [
        const Text(
          'Counter',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 15),

        Text(
          '$counter',
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.bold,
            color: isEven ? const Color.fromARGB(255, 10, 41, 72) : Colors.orange,
          ),
        ),

        const SizedBox(height: 10),

        Text(
          isEven ? 'Angka Genap' : 'Angka Ganjil',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: isEven ? const Color(0xFF0A2948) : Colors.orange,
          ),
        ),
      ],
    );
  }
}