import 'package:flutter/material.dart';

void main() => runApp(const File1StatelessApp());

class File1StatelessApp extends StatelessWidget {
  const File1StatelessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HalamanStateless(),
    );
  }
}

// Widget KartuMahasiswa dengan parameter nama, nim, dan prodi
class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(
          child: Icon(Icons.person),
        ),
        title: Text(
          nama,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('NIM: $nim\nProdi: $prodi'),
        isThreeLine: true,
        trailing: const Icon(Icons.info),
      ),
    );
  }
}

class HalamanStateless extends StatelessWidget {
  const HalamanStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil & Kartu Mahasiswa'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bagian Halaman Profil: Foto (CircleAvatar) & Nama
            const Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  child: Icon(Icons.person, size: 32),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Stevino Adi Nugroho',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text('NIM 3012310001'), // Sesuaikan dengan NIM Anda
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Satu baris ikon kontak dengan Row dan Container
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue, width: 1.5),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.email, color: Colors.blue),
                  Icon(Icons.phone, color: Colors.teal),
                  Icon(Icons.location_on, color: Colors.red),
                ],
              ),
            ),
            const SizedBox(height: 28),

            // Menampilkan 3 KartuMahasiswa di dalam Column
            const Text(
              'Daftar Kartu Mahasiswa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Column(
              children: [
                KartuMahasiswa(
                  nama: 'Stevino Adi Nugroho',
                  nim: '3012310001',
                  prodi: 'Informatika',
                ),
                KartuMahasiswa(
                  nama: 'Rani',
                  nim: '3012310002',
                  prodi: 'Informatika',
                ),
                KartuMahasiswa(
                  nama: 'Rangga Kurnia',
                  nim: '1249124',
                  prodi: 'Informatika',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}