// ignore_for_file: file_names, must_be_immutable
import 'package:dolan_banjarnegara/model/wisata.dart';
import 'package:dolan_banjarnegara/shared/footer.dart';
import 'package:dolan_banjarnegara/shared/header.dart';
import 'package:flutter/material.dart';

class DashboardWisata extends StatelessWidget {
  DashboardWisata({Key key, this.index}) : super(key: key);

  int index;

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
                        wisata[index].title,
                        style: const TextStyle(fontSize: 36),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height / 15),
                      Container(
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(wisata[index].image),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 20),
                        child: Text(
                          wisata[index].description,
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
