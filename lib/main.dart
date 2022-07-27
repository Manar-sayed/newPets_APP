import 'package:flutter/material.dart';

import 'package:pets/appBar_Screens/aboutUs.dart';
import 'package:pets/Home_Screens/dog.dart';
import 'package:pets/Home_Screens/feedYourDog.dart';
import 'package:pets/Log/login.dart';
import 'package:pets/appBar_Screens/request.dart';
import 'package:pets/Home_Screens/showMore.dart';

import 'Home_Screens/dobyInfo.dart';


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
      home: dobyInfo(),

    );
  }
}


