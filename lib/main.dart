import 'package:dolan_banjarnegara/screen/login_screen/login.dart';
import 'package:dolan_banjarnegara/screen/register_screen/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
    );
  }
}

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             const ContainerHeader(
//               url: 'https://i.ibb.co/dW0Pt8s/image-4.png',
//             ),
//             SizedBox(
//               height: 1000,
//               width: MediaQuery.of(context).size.width,
//               child: Padding(
//                 padding: const EdgeInsets.all(40.0),
//                 child: Column(
//                   children: <Widget>[
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: <Widget>[
//                         ContainerCard(
//                           header: MediaQuery.of(context)
//                               .size
//                               .width
//                               .toStringAsFixed(3),
//                           subtitle: 'Info Wisata',
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const InfoWisata(),
//                               ),
//                             );
//                           },
//                         ),
//                         ContainerCard(
//                           header: MediaQuery.of(context)
//                               .size
//                               .height
//                               .toStringAsFixed(3),
//                           subtitle: 'Info Kuliner',
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 50),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: const <Widget>[
//                         ContainerCard(
//                           header: 'Info Penginapan',
//                           subtitle: 'Info Penginapan',
//                         ),
//                         ContainerCard(
//                           header: 'About Us ',
//                           subtitle: '',
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 50),
//                     const Center(
//                       child:
//                           Text('BANJARNEGARA', style: TextStyle(fontSize: 36)),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(40.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           const Text(
//                             'Penjelasan',
//                             style: TextStyle(fontSize: 36),
//                           ),
//                           Container(
//                             width: MediaQuery.of(context).size.width,
//                             height: 100,
//                             child: const Center(
//                               child: Text(
//                                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
//                                   textAlign: TextAlign.center),
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                     offset: const Offset(0, 4),
//                                     blurRadius: 4,
//                                     spreadRadius: 0,
//                                     color: Colors.black.withOpacity(0.3))
//                               ],
//                             ),
//                           ),
//                           const Text(
//                             'Video Pesona Banjarnegara',
//                             style: TextStyle(fontSize: 36),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             const Footer(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ContainerCard extends StatelessWidget {
//   const ContainerCard({
//     this.onPressed,
//     this.subtitle,
//     this.header,
//     Key key,
//   }) : super(key: key);

//   final String header;
//   final String subtitle;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     double blockHorizontal = MediaQuery.of(context).size.width / 100;
//     double blockVertical = MediaQuery.of(context).size.height / 100;
//     return InkWell(
//       onTap: onPressed,
//       child: Container(
//         width: blockHorizontal * 31.25,
//         height: blockVertical * 24.6,
//         decoration: BoxDecoration(
//           color: const Color(0xffFEFEFE),
//           boxShadow: [
//             BoxShadow(
//                 offset: const Offset(0, 4),
//                 blurRadius: 4,
//                 spreadRadius: 0,
//                 color: Colors.black.withOpacity(0.3))
//           ],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Center(
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Container(
//                 width: 50,
//                 height: 50,
//                 color: Colors.blue,
//               ),
//               SizedBox(
//                 width: blockHorizontal * 3.12,
//               ),
//               Center(
//                 child: Column(
//                   children: <Widget>[
//                     const SizedBox(height: 50),
//                     Text(
//                       header,
//                       style: TextStyle(fontSize: blockHorizontal * 2.8),
//                     ),
//                     Text(subtitle)
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
