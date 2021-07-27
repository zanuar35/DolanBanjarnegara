// ignore_for_file: file_names

import 'package:dolan_banjarnegara/model/wisata.dart';
import 'package:dolan_banjarnegara/screen/info_wisata/dashboard_infoWisata.dart';
import 'package:dolan_banjarnegara/screen/info_wisata/widgets/container_card.dart';
import 'package:dolan_banjarnegara/shared/footer.dart';
import 'package:dolan_banjarnegara/shared/header.dart';
import 'package:flutter/material.dart';

class InfoWisata extends StatelessWidget {
  const InfoWisata({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContainerHeader(
              url: 'https://i.ibb.co/6F4zvZL/image-23.png',
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
                            Icons.luggage_rounded,
                            size: 65,
                            color: Color(0xff49BCC3),
                          ),
                          Text('Info Wisata', style: TextStyle(fontSize: 36)),
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
                            nama: wisata[0].title,
                            url: wisata[0].image,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardWisata(
                                      title: wisata[0].title,
                                      url: wisata[0].image,
                                      deskripsi: wisata[0].description),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 25),
                          ContainerCard(
                            nama: wisata[1].title,
                            url: wisata[1].image,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardWisata(
                                      title: wisata[1].title,
                                      url: wisata[1].image,
                                      deskripsi: wisata[1].description),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 25),
                          ContainerCard(
                            nama: wisata[2].title,
                            url: wisata[2].image,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardWisata(
                                      title: wisata[2].title,
                                      url: wisata[2].image,
                                      deskripsi: wisata[2].description),
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 25),
                          ContainerCard(
                            nama: wisata[3].title,
                            url: wisata[3].image,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DashboardWisata(
                                      title: wisata[3].title,
                                      url: wisata[3].image,
                                      deskripsi: wisata[3].description),
                                ),
                              );
                            },
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
