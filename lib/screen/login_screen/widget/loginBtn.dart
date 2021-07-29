// ignore_for_file: avoid_print, file_names, must_be_immutable

import 'dart:async';

import 'package:dolan_banjarnegara/screen/dashboard/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class LoginBtn extends StatelessWidget {
  LoginBtn({
    this.emailController,
    this.passController,
    Key key,
  }) : super(key: key);

  var emailController = TextEditingController();
  var passController = TextEditingController();

  void dispose() {
    emailController.dispose();
    passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double blockHorizontal = (MediaQuery.of(context).size.width / 100);
    double blockVertical = (MediaQuery.of(context).size.height / 100);
    return Container(
      width: MediaQuery.of(context).size.width / 8,
      height: MediaQuery.of(context).size.height / 12,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.black.withOpacity(0.3))
        ],
      ),
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
          child: FittedBox(
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: blockHorizontal * 1.5, color: Colors.black),
            ),
          ),
          onPressed: () async {
            EasyLoading.show(
              status: 'loading...',
              maskType: EasyLoadingMaskType.black,
            );
            if (emailController.text.isEmpty || passController.text.isEmpty) {
              EasyLoading.showError('Form Kosong');
            } else {
              try {
                UserCredential userCredential = await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                        email: emailController.text,
                        password: passController.text);
                final User user = userCredential.user;
                if (user != null) {
                  EasyLoading.showSuccess('Login Success');
                  print('Berhasil Login');
                  emailController.clear();
                  passController.clear();
                  Timer(const Duration(seconds: 2), () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Dashboard()));
                  });
                }
              } on FirebaseAuthException catch (e) {
                if (e.code == 'user-not-found') {
                  EasyLoading.showError('No user found for that email.');
                  print('No user found for that email.');
                } else if (e.code == 'wrong-password') {
                  EasyLoading.showError('Password Salah');
                  print('Password Salah');
                }
              }
            }
          }),
    );
  }
}

// InkWell(
      // onTap: () async {
      //   EasyLoading.show(
      //     status: 'loading...',
      //     maskType: EasyLoadingMaskType.black,
      //   );
      //   try {
      //     UserCredential userCredential = await FirebaseAuth.instance
      //         .signInWithEmailAndPassword(
      //             email: emailController.text, password: passController.text);
      //     final User user = userCredential.user;
      //     if (user != null) {
      //       EasyLoading.showSuccess('Login Success');
      //       print('Berhasil Login');
      //       Timer(const Duration(seconds: 2), () {
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => const Dashboard()));
      //       });
      //     }
      //   } on FirebaseAuthException catch (e) {
      //     if (e.code == 'user-not-found') {
      //       EasyLoading.showError('No user found for that email.');
      //       print('No user found for that email.');
      //     } else if (e.code == 'wrong-password') {
      //       EasyLoading.showError('Password Salah');
      //       print('Password Salah');
      //     }
      //   }
      // },
//       child: Container(
//         width: MediaQuery.of(context).size.width / 8,
//         height: MediaQuery.of(context).size.height / 12,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(5),
//           boxShadow: [
//             BoxShadow(
//                 offset: const Offset(0, 4),
//                 blurRadius: 4,
//                 spreadRadius: 0,
//                 color: Colors.black.withOpacity(0.3))
//           ],
//         ),
//         child: const Center(
//           child: Text('Login',
//               style: TextStyle(color: Colors.black, fontSize: 18)),
//         ),
//       ),
//     );