// ignore_for_file: avoid_print

import 'dart:async';

import 'package:dolan_banjarnegara/screen/login_screen/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class RegistScreen extends StatefulWidget {
  const RegistScreen({
    Key key,
  }) : super(key: key);

  @override
  State<RegistScreen> createState() => _RegistScreenState();

  
}
final emailController = TextEditingController();
final passController = TextEditingController();
final nameContoller = TextEditingController();
final verifyPassController = TextEditingController();
final formKey = GlobalKey<FormState>();



class _RegistScreenState extends State<RegistScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
          body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 10) * 1,
              color: const Color(0xff1C1C1C).withOpacity(0.95),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Image(
                        image: NetworkImage(
                            'https://i.ibb.co/nQWtb26/Group-1.png')),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: (MediaQuery.of(context).size.height / 10) * 1,
                        width: (MediaQuery.of(context).size.width / 10) * 0.8,
                        color: const Color(0xff49BCC3),
                        child: const Center(
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: (MediaQuery.of(context).size.height / 10) * 9,
              color: const Color(0xffFFF5F5),
              child: Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: (MediaQuery.of(context).size.height / 10) * 9,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.ibb.co/LJZwJCD/image-31.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: (MediaQuery.of(context).size.height / 10) * 9,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xff188A8D), Color(0xff60DD8E)]),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Register To DolanBanjarnegara',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Nama Lengkap',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                height: MediaQuery.of(context).size.height / 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.1))
                                  ],
                                ),
                                child: Center(
                                    child: TextFormField(
                                  controller: nameContoller,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 5,
                                      bottom: 4,
                                    ),
                                  ),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                height: MediaQuery.of(context).size.height / 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.1))
                                  ],
                                ),
                                child: Center(
                                    child: TextFormField(
                                  controller: emailController,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 5,
                                      bottom: 4,
                                    ),
                                  ),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                height: MediaQuery.of(context).size.height / 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.1))
                                  ],
                                ),
                                child: Center(
                                    child: TextFormField(
                                  controller: passController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 5,
                                      bottom: 4,
                                    ),
                                  ),
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Verifikasi Password',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                height: MediaQuery.of(context).size.height / 15,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: [
                                    BoxShadow(
                                        offset: const Offset(0, 4),
                                        blurRadius: 4,
                                        spreadRadius: 0,
                                        color: Colors.black.withOpacity(0.1))
                                  ],
                                ),
                                child: Center(
                                    child: TextFormField(
                                  controller: verifyPassController,
                                  obscureText: true,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      left: 5,
                                      bottom: 4,
                                    ),
                                  ),
                                )),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              InkWell(
                                onTap: () async {
                                  EasyLoading.show(
                                    status: 'loading...',
                                    maskType: EasyLoadingMaskType.black,
                                  );
                                  try {
                                    UserCredential userCredential =
                                        await FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                                email:
                                                    "barry.allen@example.com",
                                                password:
                                                    "SuperSecretPassword!");
                                    final User user = userCredential.user;
                                    if (user != null) {
                                      print('Berhasil Register');
                                      EasyLoading.showSuccess(
                                          'Register Success');
                                      Timer(const Duration(seconds: 2), () {
                                        Navigator.pop(context);
                                      });
                                    }
                                  } on FirebaseAuthException catch (e) {
                                    if (e.code == 'weak-password') {
                                      print(
                                          'The password provided is too weak.');
                                      EasyLoading.showError(
                                          'Password terlalu pendek');
                                    } else if (e.code ==
                                        'email-already-in-use') {
                                      print(
                                          'The account already exists for that email.');
                                      EasyLoading.showError(
                                          'Email Telah digunakan');
                                    }
                                  } catch (e) {
                                    print(e);
                                  }
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 8,
                                  height:
                                      MediaQuery.of(context).size.height / 12,
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
                                    child: Text('Buat Akun',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 18)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
