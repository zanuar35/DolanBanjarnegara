// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  EmailTextField({
    this.emailController,
    Key key,
  }) : super(key: key);

  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
