import 'package:flutter/material.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Tugas Mata Kuliah"),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CustomCard(
              title: "Pemrograman Mobile 2",
              image:
                  "https://cdn.pixabay.com/photo/2016/07/13/08/48/mobile-phone-1513945_960_720.jpg"),
          CustomCard(
              title: "Pemrograman Web 1",
              image:
                  "https://cdn.pixabay.com/photo/2016/12/28/09/36/web-1935737_960_720.png"),
          CustomCard(
              title: "Aumeted Reality dan Virtual Reality",
              image:
                  "https://cdn.pixabay.com/photo/2019/12/10/05/56/cyber-glasses-4685055_960_720.jpg"),
          CustomCard(
              title: "Bahasa Indonesia",
              image:
                  "https://cdn.pixabay.com/photo/2013/05/12/09/36/globe-110775_960_720.jpg"),
          CustomCard(
              title: "Sistem Operasi",
              image:
                  "https://cdn.pixabay.com/photo/2015/10/30/10/03/app-1013616_960_720.jpg"),
          CustomCard(
              title: "Sistem Informasi Enterprise",
              image:
                  "https://cdn.pixabay.com/photo/2019/06/19/07/13/email-4284157_960_720.png"),
          CustomCard(
              title: "Desain Kreatif Aplikasi dan Game",
              image:
                  "https://cdn.pixabay.com/photo/2016/07/12/19/08/laptop-1512838_960_720.png"),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.title, required this.image});

  String title;
  String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        //menambahkan bayangan
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title),
            )
          ],
        ),
      ),
    );
  }
}
