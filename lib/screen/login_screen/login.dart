// ignore_for_file: avoid_print, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:dolan_banjarnegara/screen/login_screen/widget/containerTextPass.dart';
import 'package:dolan_banjarnegara/screen/login_screen/widget/emailTextField.dart';
import 'package:dolan_banjarnegara/screen/login_screen/widget/loginBtn.dart';
import 'package:dolan_banjarnegara/screen/register_screen/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

final emailController = TextEditingController();
final passController = TextEditingController();

GlobalKey<FormState> _abcKey = GlobalKey<FormState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _abcKey,
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
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistScreen(),
                        ),
                      ),
                      child: Container(
                        height: (MediaQuery.of(context).size.height / 10) * 1,
                        width: (MediaQuery.of(context).size.width / 10) * 0.8,
                        color: const Color(0xff49BCC3),
                        child: const Center(
                          child: Text(
                            'Sign Up',
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
                          'Log in To DolanBanjarnegara',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Hi! Selamat Datang Kembali, Silahkan Log In',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.62),
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 20,
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
                                  'email',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              EmailTextField(emailController: emailController),
                              const SizedBox(
                                height: 20,
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
                              PassFormField(
                                finalpassController: passController,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              LoginBtn(
                                  emailController: emailController,
                                  passController: passController)
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
