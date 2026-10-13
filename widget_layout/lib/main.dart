import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          leading: const Icon(Icons.home, color: Colors.white),
          title: const Text(
            'Flutter Layout',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(10.0),
          // Menggunakan Column kembali agar pas satu layar (tidak bisa di-scroll)
          child: Column(
            children: <Widget>[
              const Row(
                children: <Widget>[
                  Icon(Icons.archive),
                  SizedBox(width: 8),
                  Text(
                    'Artikel Terbaru',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // 1. Membungkus Card dengan Expanded agar ukurannya otomatis mengikuti sisa layar
              Expanded(
                child: Card(
                  child: Column(
                    children: <Widget>[
                      // 2. Membungkus Image dengan Expanded agar gambar mengalah pada ukuran layar
                      Expanded(
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/7/73/Borobudur_Temple.jpg?utm_source=id.wikipedia.org&utm_campaign=index&utm_content=original',
                          // 3. Menggunakan BoxFit.contain agar gambar mengecil proporsional tanpa melebar/terpotong
                          fit: BoxFit.contain,
                          width: double
                              .infinity, // Memenuhi lebar kartu yang tersedia
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'Candi Borobudur',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
