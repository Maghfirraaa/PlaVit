import 'package:flutter/material.dart';
// import 'package:contoh_navigasi_flutter/models/OlahRaga.dart';

import '../models/Tumbuhan.dart';

class DetailTumbuhan extends StatelessWidget {
  final Tumbuhan tanaman;

  const DetailTumbuhan({Key? key, required this.tanaman}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bagianJudul = Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(tanaman.nama,
                        style: Theme.of(context).textTheme.headline6),
                  ),
                  Text(
                    tanaman.harga,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget bagianDeskripsi = Container(
      padding: EdgeInsets.all(16),
      child: Text(
        tanaman.deskripsi,
        style: TextStyle(color: Colors.grey[600]),
        // style: Theme.of(context).textTheme.bodyText1,
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text(tanaman.nama), backgroundColor: Colors.green),
      body: ListView(
        children: <Widget>[
          Image.network(
            tanaman.gambar,
            width: 600,
            fit: BoxFit.cover,
          ),
          bagianJudul,
          bagianDeskripsi,
        ],
      ),
    );
  }
}
