import 'package:flutter/material.dart';
import 'package:navigasi/views/DetailTumbuhan.dart';
import 'package:navigasi/views/Landing.dart';
import 'package:navigasi/views/landingPage.dart';
// import 'package:navigasi/views/DetailOlahRaga.dart';
import '../models/Tumbuhan.dart';
// import 'package:contoh_navigasi_flutter/views/DetailOlahRaga.dart';

class Catalog extends StatefulWidget {
  @override
  late String param;
  Catalog({Key? key, required this.param}) : super(key: key);
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  Widget build(BuildContext context) {
    List<String> kumpulanGambar = [
      "images.jpeg",
      "images2.jpg",
      "images3.jpeg",
      "images4.jpeg",
      "images5.jpeg",
      "images6.jpeg",
      "images7.jpeg",
    ];

    return Scaffold(
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 15)),
          Container(
            child: new Text(
              'Selamat Datang',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.param),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            width: 320,
            height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color.fromARGB(255, 39, 40, 40),
                width: 1,
              ),
            ),
            child: TextFormField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(left: 20),
                labelText: "Search",
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          const Padding(
            padding: EdgeInsets.only(right: 250, top: 28, left: 5),
            child: Text(
              'Top Flower',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 5)),
          Expanded(
            child: GridView.builder(
              itemCount: kumpulanGambar.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('image/${kumpulanGambar[i]}'),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
