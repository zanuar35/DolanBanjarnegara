import 'package:dolan_banjarnegara/screen/register_screen/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      image:
                          NetworkImage('https://i.ibb.co/nQWtb26/Group-1.png')),
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
                            Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              height: MediaQuery.of(context).size.height / 13,
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
                            Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              height: MediaQuery.of(context).size.height / 13,
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
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
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
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18)),
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
          )
        ],
      ),
    ));
  }
}
