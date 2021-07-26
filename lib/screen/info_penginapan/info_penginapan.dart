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
                        children: const <Widget>[
                          ContainerCard(
                            nama: 'Hotel Surya Yudha Banjarnegara',
                            url: 'https://i.ibb.co/kVLpjnM/image-17-2.png',
                          ),
                          SizedBox(height: 25),
                          ContainerCard(
                            url: 'https://i.ibb.co/p3Yxr4b/image-18.png',
                            nama: 'Central Hotel Banjarnegara',
                          ),
                          SizedBox(height: 25),
                          ContainerCard(
                            url: 'https://i.ibb.co/sC8892y/kkp-RNK0l-YMs.png',
                            nama: 'Hotel Asri Banjarnegara',
                          ),
                          SizedBox(height: 25),
                          ContainerCard(
                            url: 'https://i.ibb.co/TqM6phR/image-19.png',
                            nama: 'Sokanandi Hotel Banjarnegara',
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
