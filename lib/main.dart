import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0), // Atur jarak sesuai kebutuhan
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0), // Atur jarak sesuai kebutuhan
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500], // Atur warna sesuai kebutuhan
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star, // Ganti dengan ikon yang sesuai
            color: Colors.red, // Atur warna sesuai kebutuhan
          ),
          const Text('41'), // Ganti dengan teks yang sesuai
        ],
      ),
    );

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

  Color color = Theme.of(context).primaryColor;

  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      _buildButtonColumn(color, Icons.call, 'CALL'),
      _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      _buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: Column(
      children: [
        Image.asset(
          'assets/bns.png',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 12),
        const Text(
          'Batu Night Spectacular (BNS) adalah salah satu destinasi wisata yang populer di Kota Batu, Jawa Timur. '
          'BNS menawarkan pengunjungnya pengalaman hiburan malam yang unik dengan '
          'beragam wahana, pertunjukan panggung, dan suasana yang bercahaya. '
          'Afif Lukmanul Hakim dan 2141720262 ',
          softWrap: true,
        ),
      ],
    )
    
  );

    return MaterialApp(
      title: 'Flutter layout: Afif Lukmanul Hakim dan 2141720262',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            textSection,
            buttonSection
          ],
        )
        ),
      );
  }
}