import 'package:dolan_banjarnegara/authentication.dart';
import 'package:dolan_banjarnegara/model/penginapan.dart';
import 'package:dolan_banjarnegara/screen/dashboard/dashboard.dart';
import 'package:dolan_banjarnegara/screen/info_wisata/widgets/container_card.dart';
import 'package:dolan_banjarnegara/shared/footer.dart';
import 'package:dolan_banjarnegara/shared/header.dart';
import 'package:flutter/material.dart';

class InfoPenginapan extends StatelessWidget {
  const InfoPenginapan({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContainerHeader(
              url: 'https://i.ibb.co/db5HbcN/image-17-1.png',
            ),
            SizedBox(
              height: 1000,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 40, 40, 2),
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: 'banjar',
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.bed_rounded,
                            size: 65,
                            color: Color(0xff49BCC3),
                          ),
                          Text('Info Penginapan',
                              style: TextStyle(fontSize: 36)),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(40, 40, 40, 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ContainerCard(
                              nama: penginapan[0].title,
                              url: penginapan[0].image,
                            ),
                            const SizedBox(height: 25),
                            ContainerCard(
                              nama: penginapan[1].title,
                              url: penginapan[1].image,
                            ),
                            const SizedBox(height: 25),
                            ContainerCard(
                              nama: penginapan[2].title,
                              url: penginapan[2].image,
                            ),
                            const SizedBox(height: 25),
                            ContainerCard(
                              nama: penginapan[3].title,
                              url: penginapan[3].image,
                            )
                          ],
                        ))
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
    this.url,
    Key key,
    this.nama,
  }) : super(key: key);

  final String url;
  final String nama;

  @override
  Widget build(BuildContext context) {
    double blockHorizontal = MediaQuery.of(context).size.width / 100;
    double blockVertical = MediaQuery.of(context).size.height / 100;
    return Container(
      width: blockHorizontal * 76.5,
      height: blockVertical * 29.5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: blockHorizontal * 11.7,
              height: blockVertical * 24.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nama,
                  style: TextStyle(fontSize: blockHorizontal * 2.8),
                ),
                Text(
                    'Banjarnegara 22 Juli 2021 - Info wisata Banjarnegara selangkapnya klik “Lihat”',
                    style: TextStyle(fontSize: blockHorizontal * 1.17))
              ],
            ),
            Container(
                width: blockHorizontal * 7.8,
                height: blockVertical * 6.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff49BCC3)),
                child: const Center(
                  child: Text(
                    'Lihat',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ))
          ],
        ),
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
    );
  }
}
