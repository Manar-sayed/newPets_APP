import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pets/Home_Screens/Home.dart';
import 'package:pets/Log/login.dart';
import 'package:pets/basis/wigdet.dart';

import '../appBar_Screens/aboutUs.dart';
import '../basis/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    HexColor.fromHex('#110B09'),
                    HexColor.fromHex('#31211A'),
                    HexColor.fromHex('#56392D'),
                    HexColor.fromHex('#9B7F73'),
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 60,
                      width: 140,
                      child:
                      const Image(image: AssetImage("assets/logo.png"))),

                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const aboutUs()),
                        );
                      },
                      child: Text('About Us',
                          style: GoogleFonts.abel(
                              color: Colors.white, fontSize: 20))),
                  TextButton(
                      onPressed: () {},
                      child: Text('Categories',
                          style: GoogleFonts.abel(
                              color: Colors.white, fontSize: 20))),
                  TextButton(
                      onPressed: () {},
                      child: Text('Services',
                          style: GoogleFonts.abel(
                              color: Colors.white, fontSize: 20))),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Request',
                        style:
                        GoogleFonts.abel(color: Colors.white, fontSize: 20),
                      )),
                  SizedBox(width: 40,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: HexColor.fromHex('#FFE3C5'), width: 2.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white),
                        )),
                    width: 100,
                    height: 40,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: HexColor.fromHex('#FFFFFF').withOpacity(.99),
                        border: Border.all(
                            color: HexColor.fromHex('#FFE3C5'), width: 2.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(child: Text('Login')),
                      width: 100,
                      height: 40,
                    ),
                  ),
                ],
              ),
            ),//////app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height:1000,
                child: Stack(

                  children:  [

                    const Positioned(
                      left: 100,
                        top: 120,
                        child: Image(image: AssetImage("assets/12.png"),width: 400,height: 400,)),////footprint1
                    Positioned(
                      left: MediaQuery.of(context).size.width*.42,

                      child: Container(
                        width: 200,
                        height: 100,
                        child: Lottie.network(
                            "https://assets3.lottiefiles.com/packages/lf20_ykz7NB.json",
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*.30,
                      top: MediaQuery.of(context).size.height*.25,
                      child: Container(
                        decoration: BoxDecoration(
                          border:
                          Border.all(color: HexColor.fromHex('#56392D'), width: 2.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 560,
                        height: 750,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 25,),
                            Text('Sign Up',
                              style: GoogleFonts.abel(
                                  color: HexColor.fromHex('#492F24'), fontSize: 26,fontWeight: FontWeight.bold),

                            ),
                            SizedBox(height: 25,),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [

                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue[700],
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  width: 170,
                                  height: 45,
                                  child:  Row(


                                    children: const [
                                      SizedBox(width: 20,),
                                      Icon(Icons.facebook_outlined,color: Colors.white,),
                                      SizedBox(width: 15,),
                                      Text('Facebook',style: TextStyle(fontSize: 18,color: Colors.white),),

                                    ],
                                  ),
                                ),

                                Container(
                                  width: 170,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color:  HexColor.fromHex('#492F24'), width: 2.5),
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                  child:  Row(


                                    children:  [
                                      SizedBox(width: 20,),
                                      Icon(Icons.facebook_outlined,color: HexColor.fromHex('#492F24'),),
                                      SizedBox(width: 15,),
                                      Text('Google',style: TextStyle(color: HexColor.fromHex('#492F24'),fontSize: 18),),

                                    ],
                                  ),
                                ),

                              ],),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 20),
                              child: Row(
                                children: [
                                  Container(
                                    height: 1.5,
                                    width: 150,
                                    color:HexColor.fromHex('#492F24') ,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: Text('or',
                                      style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#492F24'), fontSize: 20,),

                                    ),
                                  ),
                                  Container(
                                    height: 1.5,
                                    width: 150,
                                    color:HexColor.fromHex('#492F24') ,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            text_form("first name"),////text form 1
                            SizedBox(height: 13,),
                            text_form("last name"),////text form 2
                            SizedBox(height: 13,),
                            text_form("Email"),////text form 3
                            SizedBox(height: 13,),
                            text_form("Password"),////text form 4
                            SizedBox(height: 13,),
                            text_form("Reset password"),////text form 5
                            SizedBox(height: 13,),
                            text_form("Country"),////text form 6

                            SizedBox(height: 35,),

                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const home()),
                                );
                              },
                              child: Container(

                                width: 400,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: HexColor.fromHex('#492F24'),
                                  borderRadius: BorderRadius.circular(25),

                                ),
                                child:  Center(
                                  child: Text('Sign up',
                                    style: GoogleFonts.abel(
                                        color: Colors.white, fontSize: 26,fontWeight: FontWeight.bold),

                                  ),
                                ),
                              ),
                            ),//////button



                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 150,vertical: 10),
                              child: Row(
                                children: [
SizedBox(width: 25,),
                                  Text('Didn`t have an account?',

                                    style: GoogleFonts.abel(
                                      color: HexColor.fromHex('#492F24'), fontSize: 14,),


                                  ),
                                  TextButton(onPressed: (){}, child:  Text('sign up',

                                    style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#492F24'), fontSize: 16,fontWeight: FontWeight.bold),


                                  ),)
                                ],
                              ),
                            ),

                          ],

                        ),
                      ),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width*.6,
                        top:500,
                        child: const Image(image: AssetImage("assets/12.png"),width: 400,height: 400,)),////footprint1
                  /////footprint2


                  ],
                ),
              ),
            ),
            bottonBar()////button bar
          ],
        ),
      ),
    );
  }
}
