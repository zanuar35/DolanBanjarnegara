import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({
    this.onPressed,
    this.url,
    Key key,
    this.nama,
  }) : super(key: key);

  final String url;
  final String nama;
  final VoidCallback onPressed;

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
            InkWell(
              onTap: onPressed,
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
