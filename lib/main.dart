import 'package:flutter/material.dart';
import 'file1_stateless.dart' show HalamanStateless;
import 'file2_stateless.dart' show HalamanCounter;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Desain Widget',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const NavigasiTugas(),
    );
  }
}

class NavigasiTugas extends StatefulWidget {
  const NavigasiTugas({super.key});

  @override
  State<NavigasiTugas> createState() => _NavigasiTugasState();
}

class _NavigasiTugasState extends State<NavigasiTugas> {
  int _indexHalaman = 0;

  final List<Widget> _daftarHalaman = const [
    HalamanStateless(),
    HalamanCounter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _daftarHalaman[_indexHalaman],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexHalaman,
        onTap: (index) {
          setState(() {
            _indexHalaman = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'File 1: Stateless',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exposure),
            label: 'File 2: Stateful',
          ),
        ],
      ),
    );
  }
}