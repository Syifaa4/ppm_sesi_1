import 'package:flutter/material.dart';
import '../widgets/identity_card.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }


  void _decrementCounter() {
    if (_counter == 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Angka tidak boleh kurang dari 0'),
        ),
      );
      return;
    }

    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 41, 72),
        foregroundColor: Colors.white,
        title: const Row(
          children: [
            Icon(Icons.school_outlined,
              size: 26,
            ),
            SizedBox(width: 10),
            Text(
              'PPM Sesi 1',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(width: 10),
            Text(
              '|',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Syifa Nurul Afifah (20240040286)'
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const IdentityCard(),

            const SizedBox(height: 40),

            CounterDisplay(
              counter: _counter,
            ),

            const SizedBox(height: 35),

            CounterButtons(
              onIncrement: _incrementCounter,
              onDecrement: _decrementCounter,
              onReset: _resetCounter,
            ),
          ],
        ),
      ),
    );
  }  
}
