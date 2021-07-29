import 'dart:async';

import 'package:dolan_banjarnegara/screen/dashboard/dashboard.dart';
import 'package:dolan_banjarnegara/screen/info_kuliner/info_kuliner.dart';
import 'package:dolan_banjarnegara/screen/info_penginapan/info_penginapan.dart';
import 'package:dolan_banjarnegara/screen/info_wisata/info_wisata.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class ContainerHeader extends StatelessWidget {
  const ContainerHeader({
    this.url,
    Key key,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    double blockHorizontal = MediaQuery.of(context).size.width / 100;
    double blockVertical = MediaQuery.of(context).size.height / 100;
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
          color: Colors.green[100]),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Image(
                    image:
                        NetworkImage('https://i.ibb.co/nQWtb26/Group-1.png')),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Dashboard(),
                              ),
                            );
                          },
                          child: const Text('Home',
                              style: TextStyle(color: Colors.white))),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoWisata(),
                            ),
                          );
                        },
                        child: const Text('Info Wisata',
                            style: TextStyle(color: Colors.white)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoPenginapan(),
                            ),
                          );
                        },
                        child: const Text('Info Penginapan',
                            style: TextStyle(color: Colors.white)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const InfoKuliner(),
                            ),
                          );
                        },
                        child: const Text('Info Kuliner',
                            style: TextStyle(color: Colors.white)),
                      ),
                      const Text('About Us',
                          style: TextStyle(color: Colors.white)),
                      InkWell(
                        onTap: () async {
                          await FirebaseAuth.instance.signOut();
                          EasyLoading.showSuccess('Bye Bye :(');
                          Timer(const Duration(seconds: 2), () {
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: blockHorizontal * 6.25,
                          height: blockVertical * 5,
                          decoration: BoxDecoration(
                            color: const Color(0xff49BCC3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                              child: Text('Log Out',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: blockVertical * 16.4),
          Center(
              child: Text(
            'Gilar Gilar Banjarnegara',
            style: TextStyle(
                color: const Color(0xff98F8FE),
                fontSize: blockHorizontal * 2.8,
                fontWeight: FontWeight.w500),
          )),
          const SizedBox(height: 10),
          Center(
              child: Text(
            'Dinginnya Banjarnegara Tak Sedingin Doimu',
            style: TextStyle(
                color: const Color(0xff98F8FE),
                fontSize: blockHorizontal * 1.25,
                fontWeight: FontWeight.w300),
          ))
        ],
      ),
    );
  }
}
