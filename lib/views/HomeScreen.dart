// import 'dart:js';
import 'package:flutter/material.dart';
import 'package:navigasi/views/DetailTumbuhan.dart';
import 'package:navigasi/views/Landing.dart';
import 'package:navigasi/views/landingPage.dart';
import '../models/Tumbuhan.dart';

class HomeScreen extends StatelessWidget {
  final List<Tumbuhan> tanaman = [
    Tumbuhan(
        'Bunga Anggrek',
        'Rp. 20.000,00',
        'Suku anggrek (bahasa Latin: Orchidaceae) merupakan satu suku tumbuhan berbunga dengan anggota jenis terbanyak. Jenis-jenisnya tersebar luas dari daerah tropika basah hingga wilayah sirkumpolar, meskipun sebagian besar anggotanya ditemukan di daerah tropika. Kebanyakan anggota suku ini hidup sebagai epifit, terutama yang berasal dari daerah tropika. Anggrek di daerah beriklim sedang biasanya hidup di tanah dan membentuk umbi sebagai cara beradaptasi terhadap musim dingin. Organ-organnya yang cenderung tebal dan "berdaging" (sukulen) membuatnya tahan menghadapi tekanan ketersediaan air. Anggrek epifit dapat hidup dari embun dan udara lembap. Orchidaceae adalah sumber inspirasi dari nama kereta api Argo Anggrek, kereta api eksekutif yang melayani Surabaya Pasar Turi-Gambir.',
        'https://asset.kompas.com/crops/XS6507pBQRpoNxgyWIIkJXGKWqE=/8x0:1000x661/750x500/data/photo/2020/06/11/5ee1f67391dff.jpg'),
    Tumbuhan(
        'Bunga Mawar',
        'Rp. 50.000,00',
        'Mawar[1] atau ros[2] (Rosa) adalah tumbuhan perdu, pohonnya berduri, bunganya berbau wangi dan berwarna indah, terdiri atas daun bunga yang bersusun;[2] meliputi ratusan jenis, tumbuh tegak atau memanjat, batangnya berduri, bunganya beraneka warna, seperti merah, putih, merah jambu, merah tua, dan berbau harum.[1] Mawar liar terdiri dari 100 spesies lebih, kebanyakan tumbuh di belahan bumi utara yang berudara sejuk. Spesies mawar umumnya merupakan tanaman semak yang berduri atau tanaman memanjat yang tingginya bisa mencapai 2 sampai 5 meter. Walaupun jarang ditemui, tinggi tanaman mawar yang merambat di tanaman lain bisa mencapai 20 meter.',
        'https://asset.kompas.com/crops/Xp29TEyfu6wLfZ6bq8c2IwBAWeA=/200x75:800x675/340x340/data/photo/2021/05/25/60ac6b0a8be74.jpg'),
    Tumbuhan(
        'Bunga Teratai',
        'Rp. 25.000,00',
        'Teratai (Nymphaea) adalah nama genus untuk tanaman air dari suku Nymphaeaceae. Dalam bahasa Inggris dikenal sebagai water-lily atau waterlily. Di Indonesia, teratai juga digunakan untuk menyebut tanaman dari genus Nelumbo (lotus). Pada zaman dulu, orang memang sering mencampuradukkan antara tanaman genus Nelumbo seperti seroja dengan genus Nymphaea (teratai). Pada Nelumbo, bunga terdapat di atas permukaan air (tidak mengapung), kelopak bersemu merah (teratai berwarna putih hingga kuning), daun berbentuk lingkaran penuh dan rimpangnya biasa dikonsumsi.',
        'https://asset.kompas.com/crops/CcAC0y_kdkxa585hc5rmBHKWtjQ=/192x136:1728x1160/750x500/data/photo/2021/03/19/60539f1c52c4c.jpg'),
    Tumbuhan(
        'Bunga Matahari',
        'Rp. 150.000,00',
        'Bunga matahari (Helianthus annuus L.) adalah tumbuhan semusim dari suku kenikir-kenikiran (Asteraceae) yang populer, baik sebagai tanaman hias maupun tanaman penghasil minyak. Bunga tumbuhan ini sangat khas: besar, biasanya berwarna kuning terang, dengan kepala bunga yang besar (diameter bisa mencapai 30 cm).[1] Bunga ini sebetulnya adalah bunga majemuk, tersusun dari ratusan hingga ribuan bunga kecil pada satu bongkol. Bunga Matahari juga memiliki perilaku khas, yaitu bunganya selalu menghadap / condong ke arah matahari atau heliotropisme. Orang Prancis menyebutnya tournesol atau "pengelana Matahari". Namun, sifat ini disingkirkan pada berbagai kultivar baru untuk produksi minyak karena memakan banyak energi dan mengurangi hasil.',
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/04/12/113765407.jpg'),
    Tumbuhan(
        'Bunga Bougenville',
        'Rp. 55.000.00',
        'Bunga bougenville atau yang biasa disebut juga dengan bunga kertas merupakan salah satu jenis bunga yang cukup populer di Indonesia. Warna bunga yang sangat cerah menjadi salah satu faktor keindahan dan daya tarik dari jenis bunga yang satu ini. Maka tak heran jika bunga ini banyak diminati oleh banyak orang. Bunga bougenville memiliki ciri khusus di mana terdapat batang yang keras dan berduri tajam serta bercabang-cabang. Biasanya batang bunga bougenville ini memiliki tinggi kurang lebih 5 hingga 15 meter.',
        'https://lzd-img-global.slatic.net/g/p/466cde6eee034a5e9ebe34e0bec50814.jpg_720x720q80.jpg_.webp'),
    Tumbuhan(
        'Bunga Teratai',
        'Rp. 35.000,00',
        'Teratai (Nymphaea) adalah nama genus untuk tanaman air dari suku Nymphaeaceae. Dalam bahasa Inggris dikenal sebagai water-lily atau waterlily. Di Indonesia, teratai juga digunakan untuk menyebut tanaman dari genus Nelumbo (lotus). Pada zaman dulu, orang memang sering mencampuradukkan antara tanaman genus Nelumbo seperti seroja dengan genus Nymphaea (teratai). Pada Nelumbo, bunga terdapat di atas permukaan air (tidak mengapung), kelopak bersemu merah (teratai berwarna putih hingga kuning), daun berbentuk lingkaran penuh dan rimpangnya biasa dikonsumsi.',
        'https://asset.kompas.com/crops/CcAC0y_kdkxa585hc5rmBHKWtjQ=/192x136:1728x1160/750x500/data/photo/2021/03/19/60539f1c52c4c.jpg'),
    Tumbuhan(
        'Bunga Anggrek',
        'Rp. 20.000,00',
        'Suku anggrek (bahasa Latin: Orchidaceae) merupakan satu suku tumbuhan berbunga dengan anggota jenis terbanyak. Jenis-jenisnya tersebar luas dari daerah tropika basah hingga wilayah sirkumpolar, meskipun sebagian besar anggotanya ditemukan di daerah tropika. Kebanyakan anggota suku ini hidup sebagai epifit, terutama yang berasal dari daerah tropika. Anggrek di daerah beriklim sedang biasanya hidup di tanah dan membentuk umbi sebagai cara beradaptasi terhadap musim dingin. Organ-organnya yang cenderung tebal dan "berdaging" (sukulen) membuatnya tahan menghadapi tekanan ketersediaan air. Anggrek epifit dapat hidup dari embun dan udara lembap. Orchidaceae adalah sumber inspirasi dari nama kereta api Argo Anggrek, kereta api eksekutif yang melayani Surabaya Pasar Turi-Gambir.',
        'https://asset.kompas.com/crops/XS6507pBQRpoNxgyWIIkJXGKWqE=/8x0:1000x661/750x500/data/photo/2020/06/11/5ee1f67391dff.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
            itemCount: tanaman.length,
            itemBuilder: (context, index) {
              return new GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailTumbuhan(
                                tanaman: tanaman[index],
                              )));
                },
                //Customcard
                child: new Card(
                  shadowColor: Colors.green[700],
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: new Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.network(
                          '${tanaman[index].gambar}',
                          width: 100,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                '${tanaman[index].nama}',
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                            Text('${tanaman[index].harga}'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
      // drawer: _buildDrawer(context),
    );
  }
}
