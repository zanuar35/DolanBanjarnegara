import 'package:dolan_banjarnegara/model/penginapan.dart';
import 'package:dolan_banjarnegara/screen/info_penginapan/dashboardPenginapan.dart';
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
                            ContainerCard(index: 0),
                            SizedBox(height: 25),
                            ContainerCard(index: 1),
                            SizedBox(height: 25),
                            ContainerCard(index: 2),
                            SizedBox(height: 25),
                            ContainerCard(index: 3)
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
    this.index,
    Key key,
  }) : super(key: key);

  final int index;

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
                    image: NetworkImage(penginapan[index].image),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  penginapan[index].title,
                  style: TextStyle(fontSize: blockHorizontal * 2.8),
                ),
                Text(
                    'Banjarnegara 22 Juli 2021 - Info wisata Banjarnegara selangkapnya klik “Lihat”',
                    style: TextStyle(fontSize: blockHorizontal * 1.17))
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DashboardPenginapan(index: index),
                  ),
                );
              },
              child: Container(
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
                  )),
            )
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
