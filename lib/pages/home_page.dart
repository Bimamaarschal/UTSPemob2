import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List bulan = [
    "Pemrograman Mobile 1 | 10.00 - 12.00",
    "Sistem Operasi | 13.00 - 15.00",
    "Bahasa Indonesia | 18.00 - 20.00",
    "Test",
    "Test",
    "Test",
    "Test",
    "Test",
    "Test"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("ELearning | Jadwal"),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(bulan[index], style: const TextStyle(fontSize: 20)),
            ),
          );
        },
        itemCount: bulan.length,
      ),
    );
  }
}
