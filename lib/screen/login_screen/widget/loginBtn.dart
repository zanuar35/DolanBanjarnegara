// ignore_for_file: avoid_print, file_names

import 'package:dolan_banjarnegara/screen/dashboard/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginBtn extends StatelessWidget {
  LoginBtn({
    this.emailController,
    this.passController,
    Key key,
  }) : super(key: key);

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        try {
          UserCredential userCredential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(
                  email: emailController.text, password: passController.text);
          final User user = userCredential.user;
          if (user != null) {
            print('Berhasil Login');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Dashboard(),
              ),
            );
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            print('No user found for that email.');
          } else if (e.code == 'wrong-password') {
            print('Password Salah');
          }
        }
      },
      child: Container(
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
        child: const Center(
          child: Text('Login',
              style: TextStyle(color: Colors.black, fontSize: 18)),
        ),
      ),
    );
  }
}
