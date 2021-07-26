import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        child: const Center(
            child: Text('Copyright © DolanBanjarnegara 2021',
                style: TextStyle(color: Colors.white, fontSize: 20))),
        decoration: const BoxDecoration(color: Color(0xff49BCC3)));
  }
}
