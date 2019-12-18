import 'package:flutter/material.dart';
import 'package:login_page/src/pages/login.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins',
            scaffoldBackgroundColor: Color.fromRGBO(243, 243, 243, 1)),
        home: Login(),
      ),
    );
