import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/Log/signUp.dart';

import '../appBar_Screens/aboutUs.dart';
import '../basis/colors.dart';
import '../Log/login.dart';
import '../basis/wigdet.dart';

class feedDog extends StatefulWidget {
  const feedDog({Key? key}) : super(key: key);

  @override
  State<feedDog> createState() => _feedDogState();
}

class _feedDogState extends State<feedDog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 500,
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
              child: Column(children: [
                Row(
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
                            MaterialPageRoute(
                                builder: (context) => const aboutUs()),
                          );
                        },
                        child: Text('About us',
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
                          style: GoogleFonts.abel(
                              color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const signUp()),
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
                          MaterialPageRoute(
                              builder: (context) => const Login()),
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
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 400,
                  height: 350,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Image(
                          image: AssetImage("assets/22.png"),
                          width: 400,
                          height: 300,
                        ),
                        top: 132,
                      ),
                      Container(
                          color: Colors.transparent,
                          // decoration:  BoxDecoration(
                          //   gradient: LinearGradient(
                          //     begin: Alignment.topRight,
                          //     end: Alignment.bottomLeft,
                          //     colors: [
                          //       HexColor.fromHex('#31211A'),
                          //       HexColor.fromHex('#56392D'),
                          //
                          //     ],
                          //   ),
                          // ),
                          height: 235,
                          width: 400,
                          child: Image(
                            image: AssetImage("assets/21.png"),
                          )),
                    ],
                  ),
                )
              ]),
            ), //////App bar
            SizedBox(
              height: 50,
            ),
            Text(
              " How you feed Your Dog?",
              textAlign: TextAlign.center,
              style: GoogleFonts.abel(
                  color: HexColor.fromHex('#492F24'),
                  fontSize: 42,
                  wordSpacing: 1.4,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "As a general rule, puppies and young dogs burn more calories, so they need \na greater quantity of food that is higher in protein and fat.\n Older, less active dogs require fewer calories to remain healthy\n\n\n"
                  "Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to \nNatural Health for Dogs and Cats, believes the most reliable approach is to \nfeed what seems to be a reasonable amount and monitor his body weight\n\n\n"
                  "“You should be able to feel your pet’s ribs easily as you slide your hand \nover his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so\n begin to feed a smaller quantity\n\n\n"
                  "As a general rule, puppies and young dogs burn more calories, so they need \na greater quantity of food that is higher in protein and fat.\n Older, less active dogs require fewer calories to remain healthy\n\n\n"
                  "Richard H. Pitcairn, DVM, PhD, author of Dr. Pitcairn’s Complete Guide to \nNatural Health for Dogs and Cats, believes the most reliable approach is to \nfeed what seems to be a reasonable amount and monitor his body weight\n\n\n"
                  "“You should be able to feel your pet’s ribs easily as you slide your hand \nover his sides,” Pitcairn says. “If you can’t, he’s probably too heavy, so\n begin to feed a smaller quantity",

              textAlign: TextAlign.center,
              style: GoogleFonts.abel(
                  color: HexColor.fromHex('#492F24'),
                  fontSize: 28,
                  wordSpacing: 2,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.normal),
            ),

            SizedBox(
              height: 50,
            ),

            bottonBar(),
          ],
        ),
      ),
    );
  }
}
