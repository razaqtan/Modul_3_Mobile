import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Alignment',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Bagian Kota
              const Text(
                'Malang',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.normal),
              ),

              // Bagian Suhu Utama
              const Text(
                '25\u00B0',
                style: TextStyle(fontSize: 90, fontWeight: FontWeight.w300),
              ),

              // Bagian Prakiraan Harian (Row)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Minggu',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Icon(Icons.sunny, color: Colors.black, size: 36),
                      SizedBox(height: 8),
                      Text('20\u00B0C', style: TextStyle(fontSize: 14)),
                    ],
                  ),

                  Column(
                    children: const [
                      Text('Senin', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 8),
                      Icon(Icons.cloudy_snowing, color: Colors.black, size: 36),
                      SizedBox(height: 8),
                      Text('23\u00B0C', style: TextStyle(fontSize: 14)),
                    ],
                  ),

                  Column(
                    children: const [
                      Text('Selasa', style: TextStyle(fontSize: 14)),
                      SizedBox(height: 8),
                      Icon(Icons.cloud, color: Colors.black, size: 36),
                      SizedBox(height: 8),
                      Text('22\u00B0C', style: TextStyle(fontSize: 14)),
                    ],
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
