import 'package:dolan_banjarnegara/model/kuliner.dart';
import 'package:dolan_banjarnegara/screen/info_wisata/widgets/container_card.dart';
import 'package:dolan_banjarnegara/shared/footer.dart';
import 'package:dolan_banjarnegara/shared/header.dart';
import 'package:flutter/material.dart';

class InfoKuliner extends StatelessWidget {
  const InfoKuliner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ContainerHeader(
              url: 'https://i.ibb.co/nwwRmDy/Group-6-1.png',
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
                        children:  <Widget>[
                          ContainerCard(
                            nama: kuliner[0].title,
                            url: kuliner[0].image,
                          ),
                          const SizedBox(height: 25),
                          ContainerCard(
                             nama: kuliner[1].title,
                            url: kuliner[1].image,
                          ),
                          const SizedBox(height: 25),
                          ContainerCard(
                            nama: kuliner[2].title,
                            url: kuliner[2].image,
                          ),
                          const SizedBox(height: 25),
                          ContainerCard(
                            nama: kuliner[3].title,
                            url: kuliner[3].image,
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
