import 'package:dolan_banjarnegara/screen/dashboard/dashboard.dart';
import 'package:dolan_banjarnegara/screen/login_screen/login.dart';
import 'package:flutter/material.dart';

class AuthService {
  //Handle Authentication
  handleAuth() {
    return StreamBuilder(
      //stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return const Dashboard();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}
