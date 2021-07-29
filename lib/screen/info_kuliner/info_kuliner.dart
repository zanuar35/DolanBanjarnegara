import 'package:dolan_banjarnegara/screen/info_kuliner/widget/containerCard.dart';
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
                            Icons.dinner_dining_rounded,
                            size: 65,
                            color: Color(0xff49BCC3),
                          ),
                          Text('Info Kuliner', style: TextStyle(fontSize: 36)),
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
                          ContainerCard(index: 3),
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
