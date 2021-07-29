import 'package:dolan_banjarnegara/screen/info_kuliner/info_kuliner.dart';
import 'package:dolan_banjarnegara/screen/info_penginapan/info_penginapan.dart';
import 'package:dolan_banjarnegara/screen/info_wisata/info_wisata.dart';
import 'package:dolan_banjarnegara/shared/footer.dart';
import 'package:dolan_banjarnegara/shared/header.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContainerHeader(
              url: 'https://i.ibb.co/dW0Pt8s/image-4.png',
            ),
            SizedBox(
              height: 1000,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ContainerCard(
                            icons: Icons.hiking_rounded,
                            header: 'info Wisata',
                            subtitle: 'Info Wisata',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const InfoWisata(),
                                ),
                              );
                            }),
                        ContainerCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoKuliner(),
                              ),
                            );
                          },
                          icons: Icons.ramen_dining_rounded,
                          header: 'Info Kuliner',
                          subtitle: 'Info Kuliner',
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ContainerCard(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const InfoPenginapan(),
                              ),
                            );
                          },
                          icons: Icons.hotel,
                          header: 'Info Penginapan',
                          subtitle: 'Info Penginapan',
                        ),
                        ContainerCard(
                          onPressed: () {},
                          header: 'About Us ',
                          subtitle: '',
                          icons: Icons.groups_rounded,
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    const Hero(
                      tag: 'banjar',
                      child: Center(
                        child: Text('BANJARNEGARA',
                            style: TextStyle(fontSize: 36)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Penjelasan',
                            style: TextStyle(fontSize: 36),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 200,
                            child: const Center(
                              child: Text(
                                  "Kabupaten Banjarnegara adalah sebuah kabupaten di Provinsi Jawa Tengah, Indonesia. Ibu kotanya juga bernama Banjarnegara. Kabupaten Banjarnegara terletak di antara 7° 12' - 7° 31' Lintang Selatan dan 109° 29' - 109° 45'50' Bujur Timur. Luas Wilayah Kabupaten Banjarnegara adalah 106.970,997 ha atau 3,10 % dari luas seluruh Wilayah Provinsi Jawa Tengah. Kabupaten ini berbatasan dengan Kabupaten Pekalongan dan Kabupaten Batang di sebelah utara, Kabupaten Wonosobo di sisi timur, Kabupaten Kebumen di sisi selatan, serta Kabupaten Banyumas dan Kabupaten Purbalingga di sebelah barat.",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18)),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    offset: const Offset(0, 4),
                                    blurRadius: 4,
                                    spreadRadius: 0,
                                    color: Colors.black.withOpacity(0.3))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    this.onPressed,
    this.subtitle,
    this.header,
    this.icons,
    Key key,
  }) : super(key: key);

  final String header;
  final String subtitle;
  final VoidCallback onPressed;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    double blockHorizontal = MediaQuery.of(context).size.width / 100;
    double blockVertical = MediaQuery.of(context).size.height / 100;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: blockHorizontal * 31.25,
        height: blockVertical * 24.6,
        decoration: BoxDecoration(
          color: const Color(0xffFEFEFE),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0,
                color: Colors.black.withOpacity(0.3))
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Icon(
                    icons,
                    color: Colors.blue,
                    size: 50,
                  ))),
              SizedBox(
                width: blockHorizontal * 2,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 50),
                    Text(
                      header,
                      style: TextStyle(fontSize: blockHorizontal * 2.8),
                    ),
                    Text(subtitle)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
