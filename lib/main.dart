import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Helper untuk membuat kolom button
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    // Praktikum 1: Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Toko Kopi Jaya',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Suhat, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('99'),
        ],
      ),
    );

    // Praktikum 2: Button Section
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Praktikum 3: Text Section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Toko Kopi Jaya Suhat adalah salah satu kedai kopi legendaris di Malang '
        'yang dikenal dengan sajian kopi racikan khas dan suasana yang hangat. '
        'Tempat ini menjadi favorit mahasiswa dan warga lokal untuk nongkrong, '
        'diskusi, ataupun sekadar menikmati kopi dengan harga terjangkau. '
        'Selain kopi, tersedia juga menu makanan pendamping yang membuat pengalaman '
        'ngopi semakin lengkap.',
        softWrap: true,
      ),
    );

    // Praktikum 4: Image Section
    return MaterialApp(
      title: 'Basic Layout Flutter - Toko Kopi Jaya',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Basic Layout Flutter - 2341760049'),
        ),
        body: ListView(
          children: [
              Image.asset(
                'assets/images/kopi.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),

            titleSection, 
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
