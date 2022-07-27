import 'package:flutter/material.dart';
import 'package:pets/Home.dart';
import 'package:pets/aboutUs.dart';
import 'package:pets/dog.dart';
import 'package:pets/login.dart';
import 'package:pets/request.dart';
import 'package:pets/showMore.dart';
import 'package:pets/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(

      debugShowCheckedModeBanner: false,
      home: showMore(),

    );
  }
}


