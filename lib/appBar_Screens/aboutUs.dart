import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/Log/signUp.dart';
import 'package:pets/basis/wigdet.dart';

import '../basis/colors.dart';
import '../Log/login.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
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
                      child: const Image(image: AssetImage("assets/logo.png"))),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const aboutUs()),
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
                  SizedBox(
                    width: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const signUp()),
                      );
                    },
                    child: Container(
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
                  ),
                  InkWell(
                    onTap: () {
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
            ), //////app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1000,
                child: Stack(
                  children: [
                    const Positioned(
                      child: RotationTransition(
                          child: Image(
                            image: AssetImage("assets/12.png"),
                            width: 400,
                            height: 400,
                          ),
                          turns: AlwaysStoppedAnimation(160 / 360)),
                    ), ////footprint1
                    const Positioned(
                        left: 200,
                        top: 650,
                        child: Image(
                          image: AssetImage("assets/12.png"),
                          width: 350,
                          height: 350,
                        )), ////footprint2
                    Positioned(
                        left: MediaQuery.of(context).size.width * .6,
                        top: 300,
                        child: const Image(
                          image: AssetImage("assets/12.png"),
                          width: 350,
                          height: 350,
                        )), ////footprint3

                    Positioned(
                      left: MediaQuery.of(context).size.width * .27,
                      top: MediaQuery.of(context).size.height * .25,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: HexColor.fromHex('#56392D'), width: 2.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 660,
                        height: 750,
                        child: Column(

                          children: [
                            SizedBox(height: 30,),
                            Text(
                              'Help your friend',
                              style: GoogleFonts.abel(
                                  color: HexColor.fromHex('#492F24'),
                                  fontSize: 38,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.5,
                                  wordSpacing: 1.5),
                            ),
                            SizedBox(height: 30,),
                            Icon(
                              Icons.camera_alt,
                              size: 100,
                              color: HexColor.fromHex("#492F24"),
                            ),
                            SizedBox(height: 50,),
                            textField("category",Icon(Icons.arrow_drop_down_sharp,color: HexColor.fromHex("#492F24"),)),
                            SizedBox(height: 25,),
                            Padding(
                              padding: const EdgeInsets.only(right: 200),
                              child: Text(
                                'Detect your currant location',
                                style: GoogleFonts.abel(
                                    color: HexColor.fromHex('#492F24'),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,

                                    wordSpacing: .5),
                              ),
                            ),
                            SizedBox(height: 10,),
                            textField("location",Icon(Icons.location_on,color: HexColor.fromHex("#492F24"), )),
                            SizedBox(height: 25,),

                            text_form("phone number"),
                            SizedBox(height: 90,),
                            InkWell(
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const home()),
                                // );
                              },
                              child: Container(

                                width: 400,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: HexColor.fromHex('#492F24'),
                                  borderRadius: BorderRadius.circular(25),

                                ),
                                child:  Center(
                                  child: Text('Send',
                                    style: GoogleFonts.abel(
                                        color: HexColor.fromHex('#FFE3C5'), fontSize: 26,fontWeight: FontWeight.bold),

                                  ),
                                ),
                              ),
                            ),//////button
                            SizedBox(height: 20,),
                            InkWell(
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => const home()),
                                // );
                              },
                              child: Container(

                                width: 400,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: HexColor.fromHex('#FFE3C5'),
                                  borderRadius: BorderRadius.circular(25),

                                ),
                                child:  Center(
                                  child: Text('Call',
                                    style: GoogleFonts.abel(
                                        color:HexColor.fromHex("#492F24"), fontSize: 26,fontWeight: FontWeight.bold),

                                  ),
                                ),
                              ),
                            ),//////button

                          ],
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            bottonBar() ////button bar
          ],
        ),
      ),
    );
  }
}
