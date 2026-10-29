import 'package:flutter/material.dart';

void main() => runApp(const File2StatefulApp());

class File2StatefulApp extends StatelessWidget {
  const File2StatefulApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanCounter(),
    );
  }
}

class HalamanCounter extends StatefulWidget {
  const HalamanCounter({super.key});

  @override
  State<HalamanCounter> createState() => _HalamanCounterState();
}

class _HalamanCounterState extends State<HalamanCounter> {
  int _counter = 0;

  void _tambah() {
    setState(() {
      _counter++;
    });
  }

  void _kurang() {
    setState(() {
      _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Stateful'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 220,
                padding: const EdgeInsets.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue, width: 2),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Nilai Counter',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$_counter',
                      style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _kurang,
                    child: const Text('Kurang'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: _reset,
                    child: const Text('Reset'),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton(
                    onPressed: _tambah,
                    child: const Text('Tambah'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}