// ignore_for_file: file_names, must_be_immutable
import 'package:dolan_banjarnegara/shared/footer.dart';
import 'package:dolan_banjarnegara/shared/header.dart';
import 'package:flutter/material.dart';

class DashboardPenginapan extends StatelessWidget {
  DashboardPenginapan({
    Key key,
    this.title,
    this.url,
    this.deskripsi,
  }) : super(key: key);

  String title;
  String url;
  String deskripsi;

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
                child: Center(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: MediaQuery.of(context).size.height / 6),
                      Text(
                        title,
                        style: const TextStyle(fontSize: 36),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 15),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(url), fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 20),
                        child: Text(
                          deskripsi,
                          style: const TextStyle(height: 2, fontSize: 18),
                        ),
                      )
                    ],
                  ),
                )),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
