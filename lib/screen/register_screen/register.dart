// ignore_for_file: avoid_print, avoid_unnecessary_containers, sized_box_for_whitespace

import 'dart:async';

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
final _formKey = GlobalKey<FormState>();

class _RegistScreenState extends State<RegistScreen> {
  @override
  Widget build(BuildContext context) {
    double blockHorizontal = (MediaQuery.of(context).size.width / 100);
    double blockVertical = (MediaQuery.of(context).size.height / 100);
    return Form(
      key: _formKey,
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
                    Container(
                      height: (MediaQuery.of(context).size.height / 10) * 1,
                      width: MediaQuery.of(context).size.width / 4,
                      child: const Image(
                          image: NetworkImage(
                              'https://i.ibb.co/nQWtb26/Group-1.png')),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: (MediaQuery.of(context).size.height / 10) * 1,
                        width: (MediaQuery.of(context).size.width / 10) * 0.8,
                        color: const Color(0xff49BCC3),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: blockHorizontal * 1.5),
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
                        SizedBox(
                          height: blockVertical * 8.2,
                        ),
                        Text(
                          'Register To DolanBanjarnegara',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: blockHorizontal * 2.5),
                        ),
                        SizedBox(
                          height: blockVertical * 8.2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Nama Lengkap',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: blockHorizontal * 1.09),
                                ),
                              ),
                              SizedBox(
                                height: blockVertical * 1.6,
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
                              SizedBox(
                                height: blockVertical * 1.6,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: blockHorizontal * 1.09),
                                ),
                              ),
                              SizedBox(
                                height: blockVertical * 1.6,
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
                              SizedBox(
                                height: blockVertical * 1.6,
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
                              SizedBox(
                                height: blockVertical * 1.6,
                              ),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Verifikasi Password',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              SizedBox(
                                height: blockVertical * 1.6,
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
                                  if (emailController.text.isNotEmpty &&
                                      passController.text.isNotEmpty &&
                                      verifyPassController.text.isNotEmpty &&
                                      nameContoller.text.isNotEmpty) {
                                    try {
                                      UserCredential userCredential =
                                          await FirebaseAuth.instance
                                              .createUserWithEmailAndPassword(
                                                  email: emailController.text,
                                                  password:
                                                      passController.text);
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
                                  } else {
                                    EasyLoading.showError('Field kosong');
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
                                  child: Center(
                                    child: Text('Buat Akun',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: blockHorizontal * 1.4)),
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
